class SVediolist_model {
  final String vedio;
  final String text;
  SVediolist_model(
    this.text,
    this.vedio,
  );

  static List<SVediolist_model> fetchAll() {
    return [
      SVediolist_model(
          'تشيلسي يوافق على بيع النادي الأميركي بوهلي مقابل 5.2 مليار دولار',
          'images/ft1.PNG'),
      SVediolist_model(
          'تشيلسي يوافق على بيع النادي الأميركي بوهلي مقابل 5.2 مليار دولار',
          'images/ft2.PNG'),
    ];
  }
}
