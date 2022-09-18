class WeekListModel {
  String glasses;
  String comment;
  String text;
  String indexe;
  WeekListModel(this.glasses, this.comment, this.text, this.indexe);

  static List<WeekListModel> fetchAll() {
    return [
      WeekListModel("images/glasses.png", "23444",
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", "1"),
      WeekListModel("images/glasses.png", "23685",
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", "2"),
      WeekListModel("images/glasses.png", "22675",
          "فيديو المصرية تضرب قناة داخل المترو التسبب ملابسها", "3"),
    ];
  }
}
