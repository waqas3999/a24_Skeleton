class TopSportNVmodels {
  final String title;
  final String editor_text;
  final String editor_pic;
  final String save;

  TopSportNVmodels(this.title, this.editor_text, this.editor_pic, this.save);

  static List<TopSportNVmodels> fetchAll() {
    return [
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn1.PNG',
          'images/bookmark.png'),
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn2.PNG',
          'images/bookmark.png'),
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn3.PNG',
          'images/bookmark.png'),
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn4.PNG',
          'images/bookmark.png'),
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn5.PNG',
          'images/bookmark.png'),
      TopSportNVmodels(
          'الدوري الأوروبي',
          'تشيلسي يوافق على بيع النادي لأمريكا مقابل 5.2 مليار دولار',
          'images/tpn6.PNG',
          'images/bookmark.png'),
    ];
  }
}
