class CarousalModelSport {
  String titie;
  String detail;
  String image_slider;
  CarousalModelSport(this.titie, this.detail, this.image_slider);
  static List<CarousalModelSport> fetchAll() {
    return [
      CarousalModelSport(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/chelsea.jpg'),
      CarousalModelSport(
          " القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/saleh.jpg'),
      CarousalModelSport(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/covid.PNG'),
      CarousalModelSport(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/army.PNG'),
      CarousalModelSport(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/elon.jpg')
    ];
  }
}
