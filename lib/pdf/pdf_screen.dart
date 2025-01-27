// code --> display

import 'package:erp_system/pdf/generate_pdf.dart';
import 'package:erp_system/utils.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class PdfScreen extends StatefulWidget {

  const PdfScreen({super.key,required});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail PDF'),),
      body: PdfPreview(
        pdfFileName: 'Rishi Dadhich Detail PDF',
        build: (format) => generatePdf(studentsList[listIndex]),
      ),
    );
  }
}
