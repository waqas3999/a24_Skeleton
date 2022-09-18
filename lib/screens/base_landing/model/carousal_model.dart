class CarousalModel {
  String titie;
  String detail;
  String image_slider;
  CarousalModel(this.titie, this.detail, this.image_slider);
  static List<CarousalModel> fetchAll() {
    return [
      CarousalModel(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/s.jpg'),
      CarousalModel(
          " القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/kaaba.PNG'),
      CarousalModel(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/covid.PNG'),
      CarousalModel(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/army.PNG'),
      CarousalModel(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/elon.jpg')
    ];
  }
}
