class SNewslist_model {
  final String title;
  final String new_images;
  final String desc;
  final String save;
  SNewslist_model(
    this.title,
    this.new_images,
    this.desc,
    this.save,
  );

  static List<SNewslist_model> fetchAll() {
    return [
      SNewslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/tank.PNG",
          "رياضة عالمية",
          "images/bookmark.png"),
      SNewslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/army.PNG",
          "رياضة عالمية",
          "images/bookmark.png"),
      SNewslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/covid.PNG",
          "رياضة عالمية",
          "images/bookmark.png"),
      SNewslist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/3.PNG',
          "رياضة عالمية",
          'images/bookmark.png')
    ];
  }
}
