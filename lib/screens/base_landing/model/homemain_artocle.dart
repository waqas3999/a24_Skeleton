class HomeMainatricle_model {
  String? ar_image;
  String? article;
  String? detail;
  HomeMainatricle_model(this.ar_image, this.article, this.detail);
  static List<HomeMainatricle_model> fetchAll() {
    return [
      HomeMainatricle_model(
          "images/news.png",
          'صورة المراهق الذي قتل جدته ومدرسا و19 تلميذا وجرح 15 فتكساسة',
          'بدء سريان قرار 7 آلاف ريال حدا أدنى لراتب أطباء الأسنان والصيادلة للاحتساب في  نسب التوطين')
    ];
  }
}
