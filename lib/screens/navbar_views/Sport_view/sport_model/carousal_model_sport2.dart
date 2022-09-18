class CarousalModelSport2 {
  String titie;
  String detail;
  String image_slider;
  CarousalModelSport2(this.titie, this.detail, this.image_slider);
  static List<CarousalModelSport2> fetchAll() {
    return [
      CarousalModelSport2(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/chelsea.jpg'),
      CarousalModelSport2(
          " القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/saleh.jpg'),
      CarousalModelSport2(
          "سم القسم",
          "السعودية تتحدى الغرب وترفض زيادة إنتاج النفط السبب والتداعيات؟",
          'images/arsenal.jpg'),
    ];
  }
}
