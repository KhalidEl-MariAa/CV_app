


import 'dart:io';
import 'dart:typed_data';

import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/features/homeSreen/data/models/resume_Model.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw ;

class PdfView {
 PdfView();



 static Future<File> createPDF()async {
  String path = (await getApplicationDocumentsDirectory()).path;
  File file = File('$path/my_resume.pdf');
  final font = await rootBundle.load("assets/fonts/Poppins/Poppins-Italic.ttf");
  final ttf = pw.Font.ttf(font);
   final pdf = pw.Document();
   pdf.addPage(_addPage(font :ttf,size: 50,pdf: pdf.document));
  Uint8List bytes = await pdf.save();
  await file.writeAsBytes(bytes);
  return file;
  
  
  
   

 }

 static pw.Page _addPage({required pw.Font font,required double size,required PdfDocument pdf}){
  pw.TextStyle? style=  pw.TextStyle(font: font,fontSize: size);
  ResumeModel resumeData = data;
  
 
  
  return pw.Page(
     margin: pw.EdgeInsets.zero,
      build: (pw.Context context) {
        return pw.Row(
          mainAxisSize: pw.MainAxisSize.max,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
pw.Container( 
  constraints: const pw.BoxConstraints(maxWidth: 235),
  child:  pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            
    pw.Center(
      child: pw.Image(pw.MemoryImage(resumeData.imageFile),height: 200,width: 150,alignment: pw.Alignment.center)),
   
       pw.Center(child:  pw.Padding(
        padding:const pw.EdgeInsets.only(left: 10,right: 10,top: 6 ), 
        child: pw.Text('${resumeData.headline}',style: style.copyWith(fontSize: 14, ))
  )),
   pw.Center(child:  pw.Padding (
      padding:const pw.EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 6),
      child: pw.Text('Name : ${resumeData.fullname}',style: style.copyWith(fontSize: 12,))
  )),
     pw.Center(child:  pw.Padding(
        padding:const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6 ), 
        child: pw.Text('Email : ${resumeData.email}',style: style.copyWith(fontSize: 12, ))
  )),
      pw.Center(child:  pw.Padding(
          padding:const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6) ,
          child:pw.Text('Phone Number : ${resumeData.phoneNumber}',style: style.copyWith(fontSize: 12, ))
  )),
         pw.Center(child: pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
            child:pw.Text('City : ${resumeData.city}',style: style.copyWith(fontSize: 12, )) 
  )),
           pw.Center(child: pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
              child: pw.Text('Nationality : ${resumeData.nationality}',style: style.copyWith(fontSize: 12, )) 
  )),
              pw.Center(child: pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
              child: pw.Text('City : ${resumeData.city}',style: style.copyWith(fontSize: 12, )) 
  )),
              pw.Divider(thickness: 1),
               pw.Center(child: pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 13),
              child: pw.Text('Education :',style: style.copyWith(fontSize: 16, )) 
  )),
               pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
              child: pw.Text('Learning deg. : ${resumeData.learningDegree}',style: style.copyWith(fontSize: 12, )) ),
                pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
              child: pw.Text('College : ${resumeData.college}',style: style.copyWith(fontSize: 12, )) ),
                pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,bottom: 6),
              child: pw.Text('University : ${resumeData.university}',style: style.copyWith(fontSize: 12, )) ),
               

              pw.Divider(thickness: 1),
             pw.Center(child:  pw.Padding(
              padding: const pw.EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 13),
              child: pw.Text('Languages :',style: style.copyWith(fontSize: 16,fontWeight: pw.FontWeight.bold )) 
  )),
         pw.Align(
          alignment: pw.Alignment.centerLeft,
              child:pw.Padding(
              padding:const pw.EdgeInsets.only(left: 15),
              child: pw.ListView.separated(
                direction: pw.Axis.vertical,
                separatorBuilder: (context, index) => pw.SizedBox(height: 6),
                itemBuilder:(context, index) =>
               pw.Text('- ${data.languages![index]}',style: style.copyWith(fontSize: 12, )), 
               itemCount: resumeData.languages!.length)
               )
               ),
               pw.SizedBox(height: 13),
              pw.Divider(thickness: 1),


              
        
        
         ])) 
         //---------------------------------------------------------------------------------------- 
            ,pw.VerticalDivider(thickness: 3),
         //----------------------------------------------------------------------------------------   
          pw.Container(
            constraints:const pw.BoxConstraints(maxWidth: 340),
            child:pw.Column( 
              
              mainAxisAlignment: pw.MainAxisAlignment.center,
              crossAxisAlignment: pw.CrossAxisAlignment.center, 
          children: [
          pw.Text('About me : ',style: style.copyWith(fontSize: 16, )),
          pw.SizedBox(height: 5),
          pw.Text('${resumeData.summary} ',style: style.copyWith(fontSize: 12, )),
          pw.SizedBox(height: 13),
          pw.Divider(thickness: 1),
          pw.SizedBox(height: 10),
          resumeData.workexp!.isEmpty || resumeData.workexp==null?pw.SizedBox()
               : pw.Column(

                children:[
                  
                  pw.Text('Work Experience :',style: style.copyWith(fontSize: 16, )),
                  pw.SizedBox(height: 5),
          pw.Align(
          alignment: pw.Alignment.topLeft,
              child:pw.Padding(
              padding:const pw.EdgeInsets.only(left: 15),
              child: pw.ListView.separated(
                direction: pw.Axis.vertical,
                separatorBuilder: (context, index) => pw.SizedBox(height: 6),
                itemBuilder:(context, index) =>
               pw.Text('- ${resumeData.workexp![index]}',style: style.copyWith(fontSize: 12, )), 
               itemCount: resumeData.workexp!.length)
               )
               ),
               pw.SizedBox(height: 10),
               pw.Divider(thickness: 1)
                ] ),

                resumeData.projects!.isEmpty || resumeData.projects==null?pw.SizedBox()
               : pw.Column(
                children:[
                  
                  pw.Text('Projects :',style: style.copyWith(fontSize: 16, )),
                  pw.SizedBox(height: 5),
          pw.Align(
          alignment: pw.Alignment.topLeft,
              child:pw.Padding(
              padding:const pw.EdgeInsets.only(left: 15),
              child: pw.ListView.separated(
                direction: pw.Axis.vertical,
                separatorBuilder: (context, index) => pw.SizedBox(height: 6),
                itemBuilder:(context, index) =>
               pw.Text('- ${resumeData.projects![index]}',style: style.copyWith(fontSize: 12, )), 
               itemCount: resumeData.projects!.length)
               )
               ),
               pw.SizedBox(height: 10),
               pw.Divider(thickness: 1)
                ] ),

          pw.Text('Courses :',style: style.copyWith(fontSize: 16, )),
          pw.SizedBox(height: 5),
          pw.Align(
          alignment: pw.Alignment.topLeft,
              child:pw.Padding(
              padding:const pw.EdgeInsets.only(left: 15),
              child: pw.ListView.separated(
                direction: pw.Axis.vertical,
                separatorBuilder: (context, index) => pw.SizedBox(height: 6),
                itemBuilder:(context, index) =>
               pw.Text('- ${resumeData.courses![index]}',style: style.copyWith(fontSize: 12, )), 
               itemCount: resumeData.courses!.length)
               )
               ),
               pw.SizedBox(height: 10),
               pw.Divider(thickness: 1),
               pw.SizedBox(height: 10),
         
          pw.Text('Skills :',style: style.copyWith(fontSize: 16, )),
          pw.SizedBox(height: 5),
           pw.Align(
          alignment: pw.Alignment.topLeft,
              child:pw.Padding(
              padding:const pw.EdgeInsets.only(left: 15),
              child: pw.ListView.separated(
                direction: pw.Axis.vertical,
                separatorBuilder: (context, index) => pw.SizedBox(height: 6),
                itemBuilder:(context, index) =>
               pw.Text('- ${resumeData.skills![index]}',style: style.copyWith(fontSize: 12, )), 
               itemCount: resumeData.skills!.length)
               )
               ),
               pw.SizedBox(height: 10),
               pw.Divider(thickness: 1),
               
               resumeData.workexp == null?pw.SizedBox():pw.SizedBox()


            
          ]
            ))
          ] );
 }); 
 }

static List<ResumeModel> getHivedata(){
  var box = Hive.box<ResumeModel>(kBoxName);
  return box.values.toList();
}
 
  
  }

  /*pw.Center(
          child:pw.Column(
          children: [
           pw.Text('${resumeData.fullname}',style: style.copyWith(fontSize: 11,)),
           pw.Text('${resumeData.headline}',style: style.copyWith(fontSize: 8, )),
           pw.Align(alignment: pw.Alignment.centerLeft,
           child: pw.Text('- Personal details :',style: style.copyWith(fontSize: 11,))),
           pw.Align(
            alignment:pw.Alignment.centerLeft,
            child:pw.Padding(padding: const pw.EdgeInsets.only(left: 15),
            child: pw.Text('. Email : ${resumeData.email}',style: style.copyWith(fontSize: 8, ))) 
            ) ,
            pw.Align(
            alignment:pw.Alignment.centerLeft,
            child:pw.Padding(padding: const pw.EdgeInsets.only(left: 15),
            child: pw.Text('. Phone Number : ${resumeData.phoneNumber}',style: style.copyWith(fontSize: 8, ))) 
            ) ,
            pw.Align(
            alignment:pw.Alignment.centerLeft,
            child:pw.Padding(padding: const pw.EdgeInsets.only(left: 15),
            child: pw.Text('. City : ${resumeData.city}',style: style.copyWith(fontSize: 8, ))) 
            ) ,
            pw.Align(
            alignment:pw.Alignment.centerLeft,
            child:pw.Padding(padding: const pw.EdgeInsets.only(left: 15),
            child: pw.Text('. Address : ${resumeData.address}',style: style.copyWith(fontSize: 8, ))) 
            ) ,
           pw.Image(pw.MemoryImage(resumeData.imageFile),height: 80,),
      ] 
  ));
  pw.Image(pw.MemoryImage(resumeData.imageFile),height: 600,width: 100),
   pw.Padding (
      padding:const pw.EdgeInsets.only(right: 50),
      child : pw.Container( 
        constraints: const pw.BoxConstraints(maxWidth: 300),
        child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
      
    pw.Align  (
      alignment: pw.Alignment.topLeft,
      child: pw.Text('- Name : ${resumeData.fullname}',style: style.copyWith(fontSize: 11,)))
        
         ])
            
          ))
  */