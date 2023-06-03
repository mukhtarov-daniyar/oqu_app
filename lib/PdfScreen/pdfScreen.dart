import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({Key key}) : super(key: key);

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ҚИЯЛ-ҒАЖАЙЫП ЕРТЕГІЛЕР'),
      ),
      body: Container(
        child: SfPdfViewer.network(
            'https://emirsaba.org/pars_docs/refs/4/3489/3489.pdf'),
      ),
    );
  }
}
