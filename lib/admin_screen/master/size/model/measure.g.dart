// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasureAdapter extends TypeAdapter<Measure> {
  @override
  final int typeId = 2;

  @override
  Measure read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Measure(
      fields[0] as String,
      fields[1] as String,
      fields[2] as dynamic,
      fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Measure obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.lstMeasure)
      ..writeByte(3)
      ..write(obj.writeDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
