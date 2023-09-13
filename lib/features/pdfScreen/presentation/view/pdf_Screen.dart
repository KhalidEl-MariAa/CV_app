import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFVieew extends StatelessWidget {
  const PDFVieew({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfPdfViewer.file(ModalRoute.of(context)!.settings.arguments as File),
      );
  }
}