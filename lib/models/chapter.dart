// lib/models/chapter.dart

import 'package:hive/hive.dart';

part 'chapter.g.dart';

/// Chapter model representing a chapter within a Gospel
/// Maps to the 'gospel_chapters' table in Supabase
/// NEW SCHEMA: gospel_chapters (89 chapters across 4 Gospels)
@HiveType(typeId: 1)
class Chapter extends HiveObject {
  @HiveField(0)
  final String id;  // UUID from gospel_chapters.id

  @HiveField(1)
  final int gospelId;  // 1-4 (Matthew, Mark, Luke, John)

  @HiveField(2)
  final int chapterNumber;  // 1-28 for Matthew, 1-16 for Mark, etc.

  @HiveField(3)
  final String? title;

  @HiveField(4)
  final String? summary;

  @HiveField(5)
  final String? theme;

  @HiveField(6)
  final List<String>? keyTeachings;

  @HiveField(7)
  final List<String>? keyVerses;

  @HiveField(8)
  final int? verseCount;

  @HiveField(9)
  final List<String>? events;

  @HiveField(10)
  final List<String>? crossReferences;

  @HiveField(11)
  final DateTime? createdAt;

  Chapter({
    required this.id,
    required this.gospelId,
    required this.chapterNumber,
    this.title,
    this.summary,
    this.theme,
    this.keyTeachings,
    this.keyVerses,
    this.verseCount,
    this.events,
    this.crossReferences,
    this.createdAt,
  });

  /// Create Chapter from Supabase JSON (gospel_chapters table)
  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      id: json['id'] as String,
      gospelId: json['gospel_id'] as int,
      chapterNumber: json['chapter_number'] as int,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      theme: json['theme'] as String?,
      keyTeachings: json['key_teachings'] != null
          ? List<String>.from(json['key_teachings'] as List)
          : null,
      keyVerses: json['key_verses'] != null
          ? List<String>.from(json['key_verses'] as List)
          : null,
      verseCount: json['verse_count'] as int?,
      events: json['events'] != null
          ? List<String>.from(json['events'] as List)
          : null,
      crossReferences: json['cross_references'] != null
          ? List<String>.from(json['cross_references'] as List)
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
    );
  }

  /// Convert Chapter to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'gospel_id': gospelId,
      'chapter_number': chapterNumber,
      'title': title,
      'summary': summary,
      'theme': theme,
      'key_teachings': keyTeachings,
      'key_verses': keyVerses,
      'verse_count': verseCount,
      'events': events,
      'cross_references': crossReferences,
      'created_at': createdAt?.toIso8601String(),
    };
  }

  /// Display name: "Matthew 5", "John 3", etc.
  String get displayName {
    final gospelNames = {1: 'Matthew', 2: 'Mark', 3: 'Luke', 4: 'John'};
    return '${gospelNames[gospelId]} $chapterNumber';
  }

  @override
  String toString() {
    return 'Chapter(${displayName}, verses: $verseCount)';
  }
}

/// ---------------------------------------------
/// MULTILINGUAL EXTENSIONS FOR CHAPTER
/// ---------------------------------------------

extension ChapterMultilingualExtensions on Chapter {
  /// Creates a Chapter from multilingual gospel_chapter_translations table
  static Chapter fromTranslationJson(
    String id,
    int gospelId,
    int chapterNumber,
    Map<String, dynamic> translationJson,
  ) {
    return Chapter(
      id: id,
      gospelId: gospelId,
      chapterNumber: chapterNumber,
      title: translationJson['title'] as String?,
      summary: translationJson['summary'] as String?,
      theme: translationJson['theme'] as String?,
      keyTeachings: translationJson['key_teachings'] != null
          ? List<String>.from(translationJson['key_teachings'] as List)
          : null,
      verseCount: null,  // Not in translations table
    );
  }

  /// Creates a copy with updated translation fields
  Chapter withTranslation({
    String? title,
    String? summary,
    String? theme,
    List<String>? keyTeachings,
  }) {
    return Chapter(
      id: id,
      gospelId: gospelId,
      chapterNumber: chapterNumber,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      theme: theme ?? this.theme,
      keyTeachings: keyTeachings ?? this.keyTeachings,
      keyVerses: keyVerses,
      verseCount: verseCount,
      events: events,
      crossReferences: crossReferences,
      createdAt: createdAt,
    );
  }

  /// Returns true if this chapter has complete translation data
  bool get hasTranslationData =>
      title != null &&
      title!.isNotEmpty &&
      summary != null;
}
