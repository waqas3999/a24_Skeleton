class Vediolist_model {
  final String vedio;
  final String text;
  Vediolist_model(
    this.text,
    this.vedio,
  );

  static List<Vediolist_model> fetchAll() {
    return [
      Vediolist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/vedio.PNG'),
      Vediolist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/s.jpg'),
      Vediolist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/p.PNG'),
      Vediolist_model(
          'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
          'images/3.PNG')
    ];
  }
}
