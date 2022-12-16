


import 'package:flutter/material.dart';
import 'package:pdfviewerbasic/models/pdf_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';




// ignore: must_be_immutable
class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key}) : super(key: key);
  PdfModel doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {

    late PdfViewerController pdfViewControllerReaderScreen;

    @override
  void initState() {
   
    super.initState();
    pdfViewControllerReaderScreen = PdfViewerController();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFb29e84),
        title: Text(widget.doc.doc_title!),

        actions: [
          GestureDetector(
            onTap: (() {
              pdfViewControllerReaderScreen.zoomLevel += 1.25;
            }),
            child: const Icon(
              Icons.zoom_in,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          GestureDetector(
            onTap: () {
              pdfViewControllerReaderScreen.zoomLevel += -0.5;
            },
            child: const Icon(
              Icons.zoom_out,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),








      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!, controller: pdfViewControllerReaderScreen,),
      ),
    );
  }
}
