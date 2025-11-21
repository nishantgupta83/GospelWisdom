// lib/models/chapter_summary.dart

import 'package:hive/hive.dart';

part 'chapter_summary.g.dart';

/// Summary view of Gospel chapters for list displays
/// Contains minimal data for performance
@HiveType(typeId: 3)
class ChapterSummary extends HiveObject {
  @HiveField(0)
  final String id;  // UUID from gospel_chapters.id

  @HiveField(1)
  final int gospelId;  // 1-4 (Matthew, Mark, Luke, John)

  @HiveField(2)
  final int chapterNumber;  // Chapter number within Gospel

  @HiveField(3)
  final String title;  // Chapter title

  @HiveField(4)
  final int scenarioCount;  // Count of scenarios for this chapter

  @HiveField(5)
  final int verseCount;  // Count of verses in chapter

  ChapterSummary({
    required this.id,
    required this.gospelId,
    required this.chapterNumber,
    required this.title,
    required this.scenarioCount,
    required this.verseCount,
  });

  /// Display name: "Matthew 5", "John 3", etc.
  String get displayName {
    final gospelNames = {1: 'Matthew', 2: 'Mark', 3: 'Luke', 4: 'John'};
    return '${gospelNames[gospelId]} $chapterNumber';
  }

  factory ChapterSummary.fromJson(Map<String, dynamic> json) {
    return ChapterSummary(
      id: json['id'] as String,
      gospelId: json['gospel_id'] as int,
      chapterNumber: json['chapter_number'] as int,
      title: json['title'] as String? ?? '',
      scenarioCount: json['scenario_count'] as int? ?? 0,
      verseCount: json['verse_count'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'gospel_id': gospelId,
        'chapter_number': chapterNumber,
        'title': title,
        'scenario_count': scenarioCount,
        'verse_count': verseCount,
      };
}
