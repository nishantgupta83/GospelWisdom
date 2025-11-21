// lib/models/gospel.dart

import 'package:hive/hive.dart';

part 'gospel.g.dart';

/// Gospel model representing one of the 4 Gospels (Matthew, Mark, Luke, John)
/// Maps to the 'gospels' table in Supabase
@HiveType(typeId: 10)
class Gospel extends HiveObject {
  @HiveField(0)
  final int gospelId;

  @HiveField(1)
  final String name; // Matthew, Mark, Luke, John

  @HiveField(2)
  final String author; // The Apostle Matthew, etc.

  @HiveField(3)
  final String? traditionalAuthor;

  @HiveField(4)
  final String? estimatedDate; // "50-70 AD"

  @HiveField(5)
  final String? theme;

  @HiveField(6)
  final String? purpose;

  @HiveField(7)
  final String? audience;

  @HiveField(8)
  final int chapterCount;

  @HiveField(9)
  final int verseCount;

  @HiveField(10)
  final List<String>? keyThemes;

  @HiveField(11)
  final String? distinctiveFeatures;

  @HiveField(12)
  final DateTime? createdAt;

  Gospel({
    required this.gospelId,
    required this.name,
    required this.author,
    this.traditionalAuthor,
    this.estimatedDate,
    this.theme,
    this.purpose,
    this.audience,
    required this.chapterCount,
    required this.verseCount,
    this.keyThemes,
    this.distinctiveFeatures,
    this.createdAt,
  });

  /// Create Gospel from Supabase JSON
  factory Gospel.fromJson(Map<String, dynamic> json) {
    return Gospel(
      gospelId: json['gospel_id'] as int,
      name: json['name'] as String,
      author: json['author'] as String,
      traditionalAuthor: json['traditional_author'] as String?,
      estimatedDate: json['estimated_date'] as String?,
      theme: json['theme'] as String?,
      purpose: json['purpose'] as String?,
      audience: json['audience'] as String?,
      chapterCount: json['chapter_count'] as int,
      verseCount: json['verse_count'] as int,
      keyThemes: json['key_themes'] != null
          ? List<String>.from(json['key_themes'] as List)
          : null,
      distinctiveFeatures: json['distinctive_features'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
    );
  }

  /// Convert Gospel to JSON
  Map<String, dynamic> toJson() {
    return {
      'gospel_id': gospelId,
      'name': name,
      'author': author,
      'traditional_author': traditionalAuthor,
      'estimated_date': estimatedDate,
      'theme': theme,
      'purpose': purpose,
      'audience': audience,
      'chapter_count': chapterCount,
      'verse_count': verseCount,
      'key_themes': keyThemes,
      'distinctive_features': distinctiveFeatures,
      'created_at': createdAt?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Gospel(id: $gospelId, name: $name, chapters: $chapterCount, verses: $verseCount)';
  }
}
