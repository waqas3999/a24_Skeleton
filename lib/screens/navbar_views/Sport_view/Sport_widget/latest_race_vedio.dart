import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/latest_race_model.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class LatestraceVedio extends StatelessWidget {
  LatestraceVedio({
    Key? key,
  }) : super(key: key);
  final editormodel = latestracemodel.fetchAll();
  @override
  Widget build(BuildContext context) {
    return editormodel.isNotEmpty
        ? ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            itemCount: editormodel.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Searching()));
                },
                child: Stack(children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      decoration: BoxDecoration(
                          color: app_Bluecolor,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                  editormodel[index].editor_vedio.toString()),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          editormodel[index].editor_text.toString(),
                          style: sport_score,
                          textAlign: TextAlign.right,
                        )),
                  ]),
                  Positioned(
                    bottom: 80,
                    left: 10,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(editormodel[index].icon_play),
                        color: app_redcolor,
                        size: 32,
                      ),
                    ),
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
