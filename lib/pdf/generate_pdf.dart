// How to create PDF.
// process of creating pdf.
import 'dart:typed_data';

import 'package:erp_system/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// material --> app ui -> Container()
// pdf/widget --> pdf -> pw.Container()

Future<Uint8List> generatePdf(Map student) async {
  final pdf = pw.Document(); // create document - blank
  pdf.addPage(
    pw.Page(
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(student['id'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
            pw.Text(student['name'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
            pw.Text(student['age'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
            pw.Text(student['phone'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
            pw.Text(student['course'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
            pw.Text(student['address'],style: const pw.TextStyle(color: PdfColors.blue,fontSize: 30)),
          ],
        );
      },
    ),
  );
  return await pdf.save();

}
