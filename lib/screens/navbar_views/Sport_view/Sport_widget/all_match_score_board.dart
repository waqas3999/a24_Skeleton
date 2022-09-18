import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class AllMatchScoreBoard extends StatefulWidget {
  const AllMatchScoreBoard({Key? key}) : super(key: key);

  @override
  State<AllMatchScoreBoard> createState() => _AllMatchScoreBoardState();
}

class _AllMatchScoreBoardState extends State<AllMatchScoreBoard>
    with TickerProviderStateMixin {
  late TabController _tabControllersport;
  @override
  void initState() {
    _tabControllersport =
        TabController(length: 3, vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabControllersport.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: app_menu_textcolor, /*strokeAlign: StrokeAlign.inside*/
            )),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: sport_main_tab_color,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4), topLeft: Radius.circular(4)),
              ),
              child: TabBar(
                  controller: _tabControllersport,
                  unselectedLabelColor: app_Whitecolor,
                  labelColor: app_Whitecolor,
                  indicatorColor: app_Bluecolor,
                  indicator: BoxDecoration(
                    color: app_Bluecolor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        topLeft: Radius.circular(4)),
                  ),
                  tabs: [
                    for (final tab in Akhbar.sportscore)
                      Tab(
                        text: tab,
                      )
                  ],
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  unselectedLabelStyle:
                      TextStyle(fontStyle: FontStyle.normal, fontSize: 14)),
            ),
          ),
          Divider(
            height: 0.5,
            color: app_menu_textcolor,
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: score_midcolor),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "الدوري الإسباني",
                        style: scoremain_text,
                      ),
                      Image.asset(
                        'images/laliga.png',
                        scale: 5,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Image.asset(
                          'images/barcelona.png',
                          scale: 12,
                        ),
                        Text("برشلونة", style: scoremain_text),
                      ]),
                      Text(
                        "1",
                        style: goal_white_style,
                      ),
                      Column(
                        children: [
                          Text(
                            ":",
                            style: sport_score,
                          ),
                          Text("21:00", style: sport_score),
                        ],
                      ),
                      Text(
                        "3",
                        style: goal_white_style,
                      ),
                      Column(children: [
                        Image.asset(
                          'images/realmadrid.png',
                          scale: 12,
                        ),
                        Text("ريال مدريد", style: scoremain_text)
                      ])
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 0.5,
            color: app_menu_textcolor,
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: app_tickercolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: app_Whitecolor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: ImageIcon(
                      AssetImage("images/leftarrow.png"),
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "كل المباريات",
                    style: listtile_text,
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
