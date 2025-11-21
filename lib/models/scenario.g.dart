// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScenarioAdapter extends TypeAdapter<Scenario> {
  @override
  final int typeId = 5;

  @override
  Scenario read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Scenario(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      category: fields[3] as String?,
      gospelId: fields[4] as int?,
      chapterId: fields[5] as String?,
      verseId: fields[6] as String?,
      verseReference: fields[7] as String?,
      heartResponse: fields[8] as String?,
      gospelResponse: fields[9] as String?,
      gospelWisdom: fields[10] as String?,
      actionSteps: (fields[11] as List?)?.cast<String>(),
      tags: (fields[12] as List?)?.cast<String>(),
      difficultyLevel: fields[13] as String?,
      createdAt: fields[14] as DateTime?,
      updatedAt: fields[15] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Scenario obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.gospelId)
      ..writeByte(5)
      ..write(obj.chapterId)
      ..writeByte(6)
      ..write(obj.verseId)
      ..writeByte(7)
      ..write(obj.verseReference)
      ..writeByte(8)
      ..write(obj.heartResponse)
      ..writeByte(9)
      ..write(obj.gospelResponse)
      ..writeByte(10)
      ..write(obj.gospelWisdom)
      ..writeByte(11)
      ..write(obj.actionSteps)
      ..writeByte(12)
      ..write(obj.tags)
      ..writeByte(13)
      ..write(obj.difficultyLevel)
      ..writeByte(14)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScenarioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
