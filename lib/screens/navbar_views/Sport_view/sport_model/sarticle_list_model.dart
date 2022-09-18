class SportList_model {
  String? article;
  String? detail;
  SportList_model(this.article, this.detail);
  static List<SportList_model> fetchAll() {
    return [
      SportList_model(
          "بدء سريان قرار 7 آلاف ريال حدا أدنى لراتب أطباء الأسنان والصيادلة للاحتساب في  نسب التوطين",
          "رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان"),
    ];
  }
}
