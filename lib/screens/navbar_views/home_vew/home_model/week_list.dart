import 'package:a24_skeleton/screens/base_landing/model/weeklist_model.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class WeekList extends StatelessWidget {
  WeekList({Key? key}) : super(key: key);
  final weeeklistrep = WeekListModel.fetchAll();
  //final Function(int) onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListView.builder(
            //physics: ScrollPhysics(),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: weeeklistrep.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            weeeklistrep[index].glasses,
                            color: app_menu_textcolor,
                            width: 18,
                          ),
                          /* SizedBox(
                                                        width: 5,
                                                      ),*/
                          Text(
                            weeeklistrep[index].comment,
                            style: message_text,
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(right: 5, top: 0),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Text(
                              weeeklistrep[index].text,
                              style: listtext,
                              maxLines: 2,
                              textAlign: TextAlign.right,
                            )),
                      ),
                      Text(
                        weeeklistrep[index].indexe,
                        style: goal_red_style,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: app_menu_textcolor,
                    height: 0.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              );
            })
      ],
    );
  }
}
