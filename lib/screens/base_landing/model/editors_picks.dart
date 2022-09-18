class Editormodels {
  final String editor_text;
  final String editor_pic;

  Editormodels(this.editor_text, this.editor_pic);

  static List<Editormodels> fetchAll() {
    return [
      Editormodels(
        'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
        'images/mobile.PNG',
      ),
      Editormodels(
        'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
        'images/covid.PNG',
      ),
      Editormodels(
        'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
        'images/army.PNG',
      ),
      Editormodels(
        'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا هاما يشمل تأشيرات جديدة',
        'images/kaaba.PNG',
      ),
    ];
  }
}
