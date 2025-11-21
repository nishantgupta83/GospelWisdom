// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_summary.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterSummaryAdapter extends TypeAdapter<ChapterSummary> {
  @override
  final int typeId = 3;

  @override
  ChapterSummary read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChapterSummary(
      id: fields[0] as String,
      gospelId: fields[1] as int,
      chapterNumber: fields[2] as int,
      title: fields[3] as String,
      scenarioCount: fields[4] as int,
      verseCount: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ChapterSummary obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.gospelId)
      ..writeByte(2)
      ..write(obj.chapterNumber)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.scenarioCount)
      ..writeByte(5)
      ..write(obj.verseCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterSummaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
