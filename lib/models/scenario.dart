
import 'package:hive/hive.dart';

part 'scenario.g.dart';

/// Scenario model representing a Gospel-based life scenario
/// Maps to the 'gospel_scenarios' table in Supabase
/// NEW SCHEMA: gospel_scenarios with gospel_id, chapter_id (UUID), verse_id (UUID)
@HiveType(typeId: 5)
class Scenario extends HiveObject {
  @HiveField(0)
  final int id;  // SERIAL PRIMARY KEY

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final String? category;  // Faith, Love, Forgiveness, Courage, etc.

  @HiveField(4)
  final int? gospelId;  // 1-4 (Matthew, Mark, Luke, John)

  @HiveField(5)
  final String? chapterId;  // UUID reference to gospel_chapters

  @HiveField(6)
  final String? verseId;  // UUID reference to gospel_verses

  @HiveField(7)
  final String? verseReference;  // "John 3:16-17", "Matthew 5:3-12"

  @HiveField(8)
  final String? heartResponse;  // Emotional/worldly response

  @HiveField(9)
  final String? gospelResponse;  // Gospel-based response (replaces dutyResponse)

  @HiveField(10)
  final String? gospelWisdom;  // Gospel teaching

  @HiveField(11)
  final List<String>? actionSteps;  // Practical steps

  @HiveField(12)
  final List<String>? tags;  // Searchable tags

  @HiveField(13)
  final String? difficultyLevel;  // Easy, Medium, Hard

  @HiveField(14)
  final DateTime? createdAt;

  @HiveField(15)
  final DateTime? updatedAt;

  Scenario({
    required this.id,
    required this.title,
    required this.description,
    this.category,
    this.gospelId,
    this.chapterId,
    this.verseId,
    this.verseReference,
    this.heartResponse,
    this.gospelResponse,
    this.gospelWisdom,
    this.actionSteps,
    this.tags,
    this.difficultyLevel,
    this.createdAt,
    this.updatedAt,
  });

  /// Create Scenario from Supabase JSON (gospel_scenarios table)
  factory Scenario.fromJson(Map<String, dynamic> json) {
    return Scenario(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String?,
      gospelId: json['gospel_id'] as int?,
      chapterId: json['chapter_id'] as String?,
      verseId: json['verse_id'] as String?,
      verseReference: json['verse_reference'] as String?,
      heartResponse: json['heart_response'] as String?,
      gospelResponse: json['gospel_response'] as String?,
      gospelWisdom: json['gospel_wisdom'] as String?,
      actionSteps: json['action_steps'] != null
          ? List<String>.from(json['action_steps'] as List)
          : null,
      tags: json['tags'] != null
          ? List<String>.from(json['tags'] as List)
          : null,
      difficultyLevel: json['difficulty_level'] as String?,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'] as String)
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'] as String)
          : null,
    );
  }

  /// Convert Scenario to JSON
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'category': category,
        'gospel_id': gospelId,
        'chapter_id': chapterId,
        'verse_id': verseId,
        'verse_reference': verseReference,
        'heart_response': heartResponse,
        'gospel_response': gospelResponse,
        'gospel_wisdom': gospelWisdom,
        'action_steps': actionSteps,
        'tags': tags,
        'difficulty_level': difficultyLevel,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  // Backward compatibility properties for old code
  int get chapter => gospelId ?? 1;  // Fallback to Matthew
  String get dutyResponse => gospelResponse ?? '';
  String? get verse => verseReference;
  String? get verseNumber => verseReference;

  // Null-safe accessors for commonly-used nullable fields
  String get categorySafe => category ?? 'General';
  String get gospelWisdomSafe => gospelWisdom ?? '';
  DateTime get createdAtSafe => createdAt ?? DateTime.now();
}

/// ---------------------------------------------
/// MULTILINGUAL EXTENSIONS FOR SCENARIO
/// ---------------------------------------------

extension ScenarioMultilingualExtensions on Scenario {
  /// Creates a Scenario from gospel_scenario_translations table
  static Scenario fromTranslationJson(
    int id,
    int? gospelId,
    String? chapterId,
    String? verseId,
    String? verseReference,
    Map<String, dynamic> translationJson,
    DateTime? createdAt,
    DateTime? updatedAt,
  ) {
    return Scenario(
      id: id,
      title: translationJson['title'] as String,
      description: translationJson['description'] as String,
      category: translationJson['category'] as String?,
      gospelId: gospelId,
      chapterId: chapterId,
      verseId: verseId,
      verseReference: verseReference,
      heartResponse: translationJson['heart_response'] as String?,
      gospelResponse: translationJson['gospel_response'] as String?,
      gospelWisdom: translationJson['gospel_wisdom'] as String?,
      actionSteps: translationJson['action_steps'] != null
          ? List<String>.from(translationJson['action_steps'] as List)
          : null,
      tags: translationJson['tags'] != null
          ? List<String>.from(translationJson['tags'] as List)
          : null,
      difficultyLevel: translationJson['difficulty_level'] as String?,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Creates a copy with updated translation fields
  Scenario withTranslation({
    String? title,
    String? description,
    String? category,
    String? heartResponse,
    String? gospelResponse,
    String? gospelWisdom,
    List<String>? actionSteps,
    List<String>? tags,
    String? difficultyLevel,
  }) {
    return Scenario(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      gospelId: gospelId,
      chapterId: chapterId,
      verseId: verseId,
      verseReference: verseReference,
      heartResponse: heartResponse ?? this.heartResponse,
      gospelResponse: gospelResponse ?? this.gospelResponse,
      gospelWisdom: gospelWisdom ?? this.gospelWisdom,
      actionSteps: actionSteps ?? this.actionSteps,
      tags: tags ?? this.tags,
      difficultyLevel: difficultyLevel ?? this.difficultyLevel,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Returns true if this scenario has complete data
  bool get hasCompleteData =>
      title.isNotEmpty &&
      description.isNotEmpty &&
      (heartResponse?.isNotEmpty ?? false) &&
      (gospelResponse?.isNotEmpty ?? false) &&
      (gospelWisdom?.isNotEmpty ?? false);
}
