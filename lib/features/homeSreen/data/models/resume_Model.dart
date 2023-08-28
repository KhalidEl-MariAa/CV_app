import 'dart:io';

class ResumeModel{

String? fullname;
String? phoneNumber;
String? email;
String? address;
String? city;
String? learningDegree;
List? languages;
List? skills;
List? courses;
File? imageFile;

ResumeModel(
  {
     this.fullname,
     this.phoneNumber,
     this.email,
     this.address,
     this.city,
     this.learningDegree,
     this.languages,
     this.skills,
     this.courses,
     this.imageFile,});

    factory ResumeModel.FromFields(){
      return ResumeModel();
    }

}