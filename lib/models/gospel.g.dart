// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gospel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GospelAdapter extends TypeAdapter<Gospel> {
  @override
  final int typeId = 10;

  @override
  Gospel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Gospel(
      gospelId: fields[0] as int,
      name: fields[1] as String,
      author: fields[2] as String,
      traditionalAuthor: fields[3] as String?,
      estimatedDate: fields[4] as String?,
      theme: fields[5] as String?,
      purpose: fields[6] as String?,
      audience: fields[7] as String?,
      chapterCount: fields[8] as int,
      verseCount: fields[9] as int,
      keyThemes: (fields[10] as List?)?.cast<String>(),
      distinctiveFeatures: fields[11] as String?,
      createdAt: fields[12] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Gospel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.gospelId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.author)
      ..writeByte(3)
      ..write(obj.traditionalAuthor)
      ..writeByte(4)
      ..write(obj.estimatedDate)
      ..writeByte(5)
      ..write(obj.theme)
      ..writeByte(6)
      ..write(obj.purpose)
      ..writeByte(7)
      ..write(obj.audience)
      ..writeByte(8)
      ..write(obj.chapterCount)
      ..writeByte(9)
      ..write(obj.verseCount)
      ..writeByte(10)
      ..write(obj.keyThemes)
      ..writeByte(11)
      ..write(obj.distinctiveFeatures)
      ..writeByte(12)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GospelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
