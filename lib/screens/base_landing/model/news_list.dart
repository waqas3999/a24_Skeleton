class Newslist_model {
  final String title;
  final String new_images;
  Newslist_model(
    this.title,
    this.new_images,
  );

  static List<Newslist_model> fetchAll() {
    return [
      Newslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/tank.PNG"),
      Newslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/army.PNG"),
      Newslist_model(
          "بوتين يصطحب الحقيبة النووية الروسية أثناء مراسم عزاء في كنيسة",
          "images/covid.PNG"),
      Newslist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/3.PNG')
    ];
  }
}
