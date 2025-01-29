// How to create PDF.
// process of creating pdf.
import 'dart:typed_data';

import 'package:erp_system/colors.dart';
import 'package:erp_system/utils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// material --> app ui -> Container()
// pdf/widget --> pdf -> pw.Container()

Future<Uint8List> generatePdf(Map student) async {

  final netUrl = await networkImage(netImage);

  final pdf = pw.Document(); // create document - blank
  pdf.addPage(
    pw.Page(
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Container(
                height: 200,
                width: 200,
                decoration: pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                  image: pw.DecorationImage(
                    image: student['image'] == null
                        ? netUrl
                        : pw.MemoryImage(student['image']),
                  ),
                )),
            pw.SizedBox(height: 10),
            pw.Divider(),
            pw.SizedBox(height: 10),
            pw.Text(student['id'],
                style: pw.TextStyle(
                    color: PdfColors.amber800,
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text(student['name'],
                style: pw.TextStyle(
                    color: PdfColors.amber800,
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold)),
            pw.Text("Age: " + student['age'],
                style: pw.TextStyle(
                    color: PdfColors.amber800,
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold)),
            pw.Text(student['course'],
                style: pw.TextStyle(
                    color: PdfColors.amber800,
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold)),
            pw.Text(student['phone'],
                style: pw.TextStyle(
                    color: PdfColors.amber800,
                    fontSize: 25,
                    fontWeight: pw.FontWeight.bold)),
            pw.SizedBox(height: 10),
            pw.Text(student['address'],
                style: const pw.TextStyle(
                    color: PdfColors.amber800, fontSize: 20)),
          ],
        );
      },
    ),
  );
  return await pdf.save();
}
