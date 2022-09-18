import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/latestsportmodel.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class LatestSportsVedio extends StatelessWidget {
  LatestSportsVedio({
    Key? key,
  }) : super(key: key);

  final editormodel = latestsportvediom.fetchAll();
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
                        height: 20,
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
