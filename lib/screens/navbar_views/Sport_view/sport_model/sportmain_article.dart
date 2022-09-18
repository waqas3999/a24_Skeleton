class SportMainatricle_model {
  String? ar_image;
  String? article;
  String? detail;
  SportMainatricle_model(this.ar_image, this.article, this.detail);
  static List<SportMainatricle_model> fetchAll() {
    return [
      SportMainatricle_model(
          "images/smt.PNG",
          'ملخص مباراة ريال مدريد وبرشلونة (0-4)',
          'کشف باتريس إيفرا، اللاعب السابق لمنتخب فرنسا ومانشستر يونايتد، أنه عاش طفولة قاسية وعانى من ظروف مؤلمة، قبل أن تنقذه كرة القدم وتنتشله من الحياة الصعبة.')
    ];
  }
}
