import 'package:a24_skeleton/screens/base_landing/model/editors_picks.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class EditorsPicks extends StatelessWidget {
  /*final String editor_text;
  final String editor_pic;*/
  EditorsPicks({
    Key? key,
    /* required this.editor_text, required this.editor_pic*/
  }) : super(key: key);
  final editormodel = Editormodels.fetchAll();
  /* List<Editormodels> items = [
    Editormodels(
        editor_text: 'images/mobile.png',
        editor_pic:
            'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة'),
    Editormodels(
        editor_text: 'images/covid.png',
        editor_pic:
            'الإمارات تقر نظاما جديدا للإقامة. 19 تعديلا\nهاما يشمل تأشيرات جديدة')
  ];*/
  @override
  Widget build(BuildContext context) {
    return editormodel.isNotEmpty
        ? ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: editormodel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Searching()));
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        decoration: BoxDecoration(
                            color: app_Bluecolor,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(
                                    editormodel[index].editor_pic.toString()),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            editormodel[index].editor_text.toString(),
                            style: home_heading2,
                            textAlign: TextAlign.right,
                          )),
                      SizedBox(
                        height: 10,
                      )
                    ]),
              );
            })
        : Center(
            child: Text('No Editors available!',
                style: TextStyle(color: Colors.white)),
          );
  }
}
