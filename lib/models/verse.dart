// lib/models/verse.dart

import 'package:hive/hive.dart';

part 'verse.g.dart';

/// Verse model representing a single Bible verse
/// Maps to the 'gospel_verses' table in Supabase
/// NEW SCHEMA: gospel_verses (~3,800 verses across 89 chapters)
@HiveType(typeId: 4)
class Verse extends HiveObject {
  @HiveField(0)
  final String id;  // UUID from gospel_verses.id

  @HiveField(1)
  final int gospelId;  // 1-4 (Matthew, Mark, Luke, John)

  @HiveField(2)
  final String chapterId;  // UUID reference to gospel_chapters

  @HiveField(3)
  final int verseNumber;  // Verse number within chapter

  @HiveField(4)
  final String text;  // The actual verse text

  @HiveField(5)
  final String reference;  // "John 3:16", "Matthew 5:3", etc.

  @HiveField(6)
  final String translationCode;  // "NIV", "KJV", "ESV", etc.

  @HiveField(7)
  final String? context;  // Background context

  @HiveField(8)
  final List<String>? crossReferences;  // Related verses

  @HiveField(9)
  final List<String>? keywords;  // Searchable keywords

  @HiveField(10)
  final List<String>? themes;  // Thematic tags

  @HiveField(11)
  final DateTime? createdAt;

  Verse({
    required this.id,
    required this.gospelId,
    required this.chapterId,
    required this.verseNumber,
    required this.text,
    required this.reference,
    this.translationCode = 'NIV',
    this.context,
    this.crossReferences,
    this.keywords,
    this.themes,
    this.createdAt,
  });

  /// Create Verse from Supabase JSON (gospel_verses table)
  factory Verse.fromJson(Map<String, dynamic> json) {
    return Verse(
      id: json['id'] as String,
      gospelId: json['gospel_id'] as int,
      chapterId: json['chapter_id'] as String,
      verseNumber: json['verse_number'] as int,
      text: json['text'] as String,
      reference: json['reference'] as String,
      translationCode: json['translation_code'] as String? ?? 'NIV',
      context: json['context'] as String?,
      crossReferences: json['cross_references'] != null
          ? List<String>.from(json['cross_references'] as List)
          : null,
      keywords: json['keywords'] != null
          ? List<String>.from(json['keywords'] as List)
          : null,
      themes: json['themes'] != null
          ? List<String>.from(json['themes'] as List)
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
    );
  }

  /// Convert Verse to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'gospel_id': gospelId,
      'chapter_id': chapterId,
      'verse_number': verseNumber,
      'text': text,
      'reference': reference,
      'translation_code': translationCode,
      'context': context,
      'cross_references': crossReferences,
      'keywords': keywords,
      'themes': themes,
      'created_at': createdAt?.toIso8601String(),
    };
  }

  /// Returns a shortened version for previews
  String get preview {
    if (text.length <= 100) return text;
    return '${text.substring(0, 97)}...';
  }

  /// Returns true if this is a valid verse
  bool get isValid => verseNumber > 0 && text.isNotEmpty;

  @override
  String toString() {
    return 'Verse($reference: ${text.substring(0, text.length > 50 ? 50 : text.length)}...)';
  }

  // Backward compatibility properties for old code
  int get verseId => verseNumber;
  String get description => text;
}

/// ---------------------------------------------
/// MULTILINGUAL EXTENSIONS FOR VERSE
/// ---------------------------------------------

extension VerseMultilingualExtensions on Verse {
  /// Creates a Verse from gospel_verse_translations table
  static Verse fromTranslationJson(
    String id,
    int gospelId,
    String chapterId,
    int verseNumber,
    String reference,
    Map<String, dynamic> translationJson,
  ) {
    return Verse(
      id: id,
      gospelId: gospelId,
      chapterId: chapterId,
      verseNumber: verseNumber,
      text: translationJson['text'] as String,
      reference: reference,
      translationCode: translationJson['translation_code'] as String? ?? 'NIV',
      context: translationJson['context'] as String?,
    );
  }

  /// Creates a copy with updated translation fields
  Verse withTranslation({
    String? text,
    String? translationCode,
    String? context,
  }) {
    return Verse(
      id: id,
      gospelId: gospelId,
      chapterId: chapterId,
      verseNumber: verseNumber,
      text: text ?? this.text,
      reference: reference,
      translationCode: translationCode ?? this.translationCode,
      context: context ?? this.context,
      crossReferences: crossReferences,
      keywords: keywords,
      themes: themes,
      createdAt: createdAt,
    );
  }

  /// Returns true if this verse has complete translation data
  bool get hasTranslationData => text.isNotEmpty && reference.isNotEmpty;
}
