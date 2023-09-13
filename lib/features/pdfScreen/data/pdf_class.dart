

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw ;

class PdfView {
 PdfView();



 static Future<File> createPDF()async {
  String path = (await getApplicationDocumentsDirectory()).path;
  File file = File('$path/my_resume.pdf');
  final font = await rootBundle.load("assets/fonts/Poppins/Poppins-Italic.ttf");
  final ttf = pw.Font.ttf(font);
   final pdf = pw.Document();
   pdf.addPage(_addPage(font :ttf,size: 50));
  Uint8List bytes = await pdf.save();
  await file.writeAsBytes(bytes);
  print(file.path);
  return file;
  
  
  
   

 }

 static pw.Page _addPage({required pw.Font font,required double size}){
  pw.TextStyle? style=  pw.TextStyle(font: font,fontSize: size);
  return pw.Page(
      build: (pw.Context context) {
        return pw.Center(
        child: pw.Text('Hello World!',style: style),
      );
 }); 
 }
}