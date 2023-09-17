// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResumeModelAdapter extends TypeAdapter<ResumeModel> {
  @override
  final int typeId = 0;

  @override
  ResumeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResumeModel(
      headline: fields[0] as String?,
      fullname: fields[1] as String?,
      phoneNumber: fields[2] as String?,
      email: fields[3] as String?,
      nationality: fields[4] as String?,
      city: fields[5] as String?,
      learningDegree: fields[6] as String?,
      summary: fields[7] as String?,
      college: fields[8] as String?,
      university: fields[9] as String?,
      projects: (fields[14] as List?)?.cast<dynamic>(),
      languages: (fields[11] as List?)?.cast<dynamic>(),
      skills: (fields[12] as List?)?.cast<dynamic>(),
      courses: (fields[10] as List?)?.cast<dynamic>(),
      imageFile: fields[15] as Uint8List,
      workexp: (fields[13] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, ResumeModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.headline)
      ..writeByte(1)
      ..write(obj.fullname)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.nationality)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.learningDegree)
      ..writeByte(7)
      ..write(obj.summary)
      ..writeByte(8)
      ..write(obj.college)
      ..writeByte(9)
      ..write(obj.university)
      ..writeByte(10)
      ..write(obj.courses)
      ..writeByte(11)
      ..write(obj.languages)
      ..writeByte(12)
      ..write(obj.skills)
      ..writeByte(13)
      ..write(obj.workexp)
      ..writeByte(14)
      ..write(obj.projects)
      ..writeByte(15)
      ..write(obj.imageFile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResumeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
