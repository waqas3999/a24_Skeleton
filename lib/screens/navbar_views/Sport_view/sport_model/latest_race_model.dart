class latestracemodel {
  final String editor_text;
  final String editor_vedio;
  final String icon_play;

  latestracemodel(this.editor_text, this.editor_vedio, this.icon_play);

  static List<latestracemodel> fetchAll() {
    return [
      latestracemodel('فورمولا وان: هاميلتون يتوج بجائزة اسبانيا الكبرى',
          'images/f1sky.jpg', 'images/mediaplayer.png'),
    ];
  }
}
