class TurkSliderModel {
  String name;
  String detail;
  String image_slider;
  TurkSliderModel(this.name, this.detail, this.image_slider);
  static List<TurkSliderModel> fetchAll() {
    return [
      TurkSliderModel("تركي السهلي",
          "تأجيل مباراةالأهلي والزمالك بالدوري المصري", 'images/sheikh.jpg'),
      TurkSliderModel(
          "تركي السهلي",
          "في المرمى مدرب التعاون السابق شعرت بخيبةأمل بقرارإقالتي",
          'images/fahad.jpg'),
      TurkSliderModel(
          "تركي السهلي",
          "تجريد روسيا من استضافة بطولة العالم لهوكي الجليد",
          'images/hamdan.jpg'),
    ];
  }
}
