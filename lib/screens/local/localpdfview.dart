import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdfviewerbasic/screens/local/localwidget.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LocalPdfView extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final path;
  const LocalPdfView({super.key, this.path});

  @override
  State<LocalPdfView> createState() => _LocalPdfViewState();
}

class _LocalPdfViewState extends State<LocalPdfView> {
  late PdfViewerController pdfViewerControllerLocal;
  
  File? pdfResult;




  @override
  void initState() {
    super.initState();
    pdfViewerControllerLocal = PdfViewerController();
  }






  Future<SfPdfViewer?> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        pdfResult = File(result.paths.first!);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return LocalWidget(path: pdfResult);
          }),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFb29e84),
        title: const Text('Local '),
      ),
      body: Column(


      
        children: [

          const SizedBox(
            height: 90,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 50,
              decoration: const BoxDecoration(
                color: //Color(0xFF253439),
                Color(0xFFb29e84),
              ),
              child: MaterialButton(
                //color: kBtnBgColor,
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    "Browse",
                  ),
                ),
                onPressed: () => pickFile(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
