class OnedayListModel {
  String glasses;
  int comment;
  String text;
  int indexe;
  OnedayListModel(this.glasses, this.comment, this.text, this.indexe);

  static List<OnedayListModel> fetchAll() {
    return [
      OnedayListModel("images/glasses.png", 1234,
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", 1),
      OnedayListModel("images/glasses.png",5678 ,
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", 2),
      OnedayListModel("images/glasses.png", 91011,
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", 4),
    ];
  }
}
