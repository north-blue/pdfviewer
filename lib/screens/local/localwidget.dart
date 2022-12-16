import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LocalWidget extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final path;
  const LocalWidget({super.key, this.path});

  @override
  State<LocalWidget> createState() => _LocalWidgetState();
}

class _LocalWidgetState extends State<LocalWidget> {
  late PdfViewerController pdfViewerController;
  @override
  void initState() {
    super.initState();
    pdfViewerController = PdfViewerController();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFb29e84),
        actions: [
          GestureDetector(
            onTap: (() {
              pdfViewerController.zoomLevel += 1.25;
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
              pdfViewerController.zoomLevel += -0.5;
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
      body: SfPdfViewer.file(
        widget.path,
        controller: pdfViewerController,
      ),
    );
  }
}
