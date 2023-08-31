import 'dart:io';

class ResumeModel{

String? headline;
String? fullname;
String? phoneNumber;
String? email;
String? address;
String? city;
String? learningDegree;
String? summary;
String? college;
String? university;
List? courses;
List? languages;
List? skills;
List? workexp;
List? projects;
File? imageFile;

ResumeModel(
  {
    this.headline,
     this.fullname,
     this.phoneNumber,
     this.email,
     this.address,
     this.city,
     this.learningDegree,
     this.summary,
     this.college,
     this.university,
     this.projects,
     this.languages,
     this.skills,
     this.courses,
     this.imageFile,
     this.workexp});

    factory ResumeModel.fromFields(){
      return ResumeModel();
    }

}