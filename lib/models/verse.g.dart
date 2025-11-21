// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VerseAdapter extends TypeAdapter<Verse> {
  @override
  final int typeId = 4;

  @override
  Verse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Verse(
      id: fields[0] as String,
      gospelId: fields[1] as int,
      chapterId: fields[2] as String,
      verseNumber: fields[3] as int,
      text: fields[4] as String,
      reference: fields[5] as String,
      translationCode: fields[6] as String,
      context: fields[7] as String?,
      crossReferences: (fields[8] as List?)?.cast<String>(),
      keywords: (fields[9] as List?)?.cast<String>(),
      themes: (fields[10] as List?)?.cast<String>(),
      createdAt: fields[11] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Verse obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.gospelId)
      ..writeByte(2)
      ..write(obj.chapterId)
      ..writeByte(3)
      ..write(obj.verseNumber)
      ..writeByte(4)
      ..write(obj.text)
      ..writeByte(5)
      ..write(obj.reference)
      ..writeByte(6)
      ..write(obj.translationCode)
      ..writeByte(7)
      ..write(obj.context)
      ..writeByte(8)
      ..write(obj.crossReferences)
      ..writeByte(9)
      ..write(obj.keywords)
      ..writeByte(10)
      ..write(obj.themes)
      ..writeByte(11)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
