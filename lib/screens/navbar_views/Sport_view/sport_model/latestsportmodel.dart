class latestsportvediom {
  final String editor_text;
  final String editor_pic;

  latestsportvediom(this.editor_text, this.editor_pic);

  static List<latestsportvediom> fetchAll() {
    return [
      latestsportvediom(
        'تشيلسي على بيع النادي لأمريكا بوهل مقابل 5.2 مليار دولار',
        'images/skating.PNG',
      ),
      latestsportvediom(
        'فيفا يحسم ملف مباراة الجزائر والكاميرون',
        'images/whiteman.PNG',
      ),
      latestsportvediom(
        ' كيف تغير إعادة تصميم سيارة الفورمولا1 السباق',
        'images/formula.png',
      ),
    ];
  }
}
