import 'dart:typed_data';

import 'package:hive/hive.dart';
part 'resume_Model.g.dart';

@HiveType(typeId: 0)
class ResumeModel extends HiveObject{
@HiveField(0)
String? headline;
@HiveField(1)
String? fullname;
@HiveField(2)
String? phoneNumber;
@HiveField(3)
String? email;
@HiveField(4)
String? nationality;
@HiveField(5)
String? city;
@HiveField(6)
String? learningDegree;
@HiveField(7)
String? summary;
@HiveField(8)
String? college;
@HiveField(9)
String? university;
@HiveField(10)
List? courses;
@HiveField(11)
List? languages;
@HiveField(12)
List? skills;
@HiveField(13)
List? workexp;
@HiveField(14)
List? projects;
@HiveField(15)
Uint8List imageFile;

ResumeModel(
  {
     this.headline,
      this.fullname,
      this.phoneNumber,
      this.email,
      this.nationality,
      this.city,
      this.learningDegree,
      this.summary,
      this.college,
      this.university,
      this.projects,
      this.languages,
      this.skills,
      this.courses,
      required this.imageFile,
      this.workexp});


}