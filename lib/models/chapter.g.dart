// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChapterAdapter extends TypeAdapter<Chapter> {
  @override
  final int typeId = 1;

  @override
  Chapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Chapter(
      id: fields[0] as String,
      gospelId: fields[1] as int,
      chapterNumber: fields[2] as int,
      title: fields[3] as String?,
      summary: fields[4] as String?,
      theme: fields[5] as String?,
      keyTeachings: (fields[6] as List?)?.cast<String>(),
      keyVerses: (fields[7] as List?)?.cast<String>(),
      verseCount: fields[8] as int?,
      events: (fields[9] as List?)?.cast<String>(),
      crossReferences: (fields[10] as List?)?.cast<String>(),
      createdAt: fields[11] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Chapter obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.gospelId)
      ..writeByte(2)
      ..write(obj.chapterNumber)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.summary)
      ..writeByte(5)
      ..write(obj.theme)
      ..writeByte(6)
      ..write(obj.keyTeachings)
      ..writeByte(7)
      ..write(obj.keyVerses)
      ..writeByte(8)
      ..write(obj.verseCount)
      ..writeByte(9)
      ..write(obj.events)
      ..writeByte(10)
      ..write(obj.crossReferences)
      ..writeByte(11)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
