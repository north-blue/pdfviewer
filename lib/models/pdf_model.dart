



class PdfModel {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  PdfModel(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<PdfModel> doc_list = [
    PdfModel(
      "Python Cheat Sheet",
      "https://programmingwithmosh.com/wp-content/uploads/2019/02/Python-Cheat-Sheet.pdf",
      "9-03-2019",
      20,
    ),
    PdfModel("Python Cheat Sheet",
        "https://programmingwithmosh.com/wp-content/uploads/2019/02/Python-Cheat-Sheet.pdf", "19-03-2019", 11),
  PdfModel("Python Cheat Sheet",
        "https://programmingwithmosh.com/wp-content/uploads/2019/02/Python-Cheat-Sheet.pdf", "2-07-2019", 11),
  ];
}


