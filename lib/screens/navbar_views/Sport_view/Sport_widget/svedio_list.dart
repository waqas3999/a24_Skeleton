import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport_model/svediolist_m.dart';
import 'package:a24_skeleton/screens/sign_in/sign_in.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class SVedioList extends StatelessWidget {
/*  final String vedio;
  final String text;*/
  SVedioList({
    Key? key,
    /*required this.vedio, required this.text*/
  }) : super(key: key);

  final vediolist_m = SVediolist_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return vediolist_m.isNotEmpty
        ? ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: vediolist_m.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        decoration: BoxDecoration(
                            color: app_Bluecolor,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(
                                  vediolist_m[index].vedio.toString()),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            vediolist_m[index].text.toString(),
                            style: vedio_text,
                            textAlign: TextAlign.right,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("images/bookmark.png"),
                                    size: 14,
                                    color: app_menu_textcolor,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "13",
                                    style: message_text,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.messenger,
                                    size: 10,
                                    color: app_menu_textcolor,
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                "2,986",
                                style: message_text,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "images/glasses.png",
                                color: app_menu_textcolor,
                                width: 18,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "مون ساعات",
                                style: message_text,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                "images/clock.png",
                                color: app_menu_textcolor,
                                width: 9,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "images/24h.PNG",
                                width: 30,
                              ),
                            ],
                          ),
                          Divider(height: 0.5, color: app_menu_textcolor)
                        ]),
                      )
                    ]),
              );
            })
        : Center(
            child: Text('No Vedios is posted!!!',
                style: TextStyle(color: Colors.white)),
          );
  }
}
