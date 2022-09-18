class SSingletextArticle {
  String title;
  String date;
  String text;

  SSingletextArticle(this.title, this.date, this.text);
  static List<SSingletextArticle> fetchAll() {
    return [
      SSingletextArticle("كرة السلة", "22 أبريل 2022",
          "فيورنتينا يهزم روما ويعزز حظوظه بنيل مركزأوروبي"),
      SSingletextArticle("كرة السلة", "22 أبريل 2022",
          "فيورنتينا يهزم روما ويعزز حظوظه بنيل مركزأوروبي"),
      SSingletextArticle("كرة السلة", "22 أبريل 2022",
          "فيورنتينا يهزم روما ويعزز حظوظه بنيل مركزأوروبي"),
      SSingletextArticle("كرة السلة", "22 أبريل 2022",
          "الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديد"),
      SSingletextArticle("كرة السلة", "22 أبريل 2022",
          "الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديد"),
    ];
  }
}
