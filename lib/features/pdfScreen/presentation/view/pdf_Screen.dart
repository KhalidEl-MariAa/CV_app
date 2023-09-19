import 'dart:io';

import 'package:cv_app/features/homeSreen/data/models/resume_Model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../core/utils/constants/const.dart';

class PDFVieew extends StatefulWidget {
  const PDFVieew({super.key});

  @override
  State<PDFVieew> createState() => _PDFVieewState();
}

class _PDFVieewState extends State<PDFVieew> {
  
void delData()async {
  var box = Hive.box<ResumeModel>(kBoxName);
  await box.clear();
}

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    delData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.file(ModalRoute.of(context)!.settings.arguments as File),
      );
  }
}