import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/custom_appbar.dart';
import 'package:a24_skeleton/screens/base_landing/model/carousal_model.dart';
import 'package:a24_skeleton/screens/base_landing/model/weeklist_model.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_screen.dart';
import 'package:a24_skeleton/screens/navbar_views/Sport_view/sport24.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_view.dart';
import 'package:a24_skeleton/screens/sign_in/sign_in.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class BaseLandiing extends StatefulWidget {
  const BaseLandiing({Key? key}) : super(key: key);

  @override
  State<BaseLandiing> createState() => _BaseLandiingState();
}

class _BaseLandiingState extends State<BaseLandiing>
    with TickerProviderStateMixin {
  late TabController _tabController2;
  bool selected_text = false;
  int navigationId = 1;
  @override
  void initState() {
    _tabController2 = TabController(
        length: Akhbar.bottomtab.length, vsync: this, initialIndex: 3);

    super.initState();
  }

  @override
  void dispose() {
    _tabController2.dispose();
    super.dispose();
  }

  final carousalres = CarousalModel.fetchAll();
  final weeeklistrep = WeekListModel.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        leading_icon: "images/uaccount.png",
        onleadingClick: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => SignIn()));
        },
        center_icon: "images/a24_logo_white.png",
        center_icon_color: 0xFF000000,
        trailing_icon: "images/menu_left.png",
        ontrailingClick: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MenuScreen()));
        },
        traling_iconcolor: 0xFF000000,
        bg_color: 0xFFFFFFFF,
        leading_iconcolor: 0xFF000000,
      ),
      body: TabBarView(controller: _tabController2, children: [
        Icon(Icons.directions_transit),
        Icon(Icons.directions_bike),
        Sport24(),
        HomeView()
      ]),
      bottomNavigationBar: TabBar(
        /*onTap: (int){setState((){selected_text=true;})*/
        controller: _tabController2,
        unselectedLabelColor: tab_unselectedcolor,
        labelColor: /*selected_text ? app_Blackcolor:*/ app_Bluecolor,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 2, color: app_Bluecolor),
          //hight of indicator
          insets: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
          //give some padding to reduce the size of indicator
        ),
        tabs: [
          Tab(
              iconMargin: EdgeInsets.only(bottom: 0),
              icon: ImageIcon(AssetImage("images/more.png"), size: 24),
              child: Text("المزيد",
                  style: TextStyle(
                      color: selected_text
                          ? tab_unselectedcolor
                          : tab_unselectedcolor))),
          Tab(
            iconMargin: EdgeInsets.only(bottom: 0),
            icon: ImageIcon(
                AssetImage(
                  "images/piechart.png",
                ),
                size: 24),
            child: Text(
              'دوليات',
              style: TextStyle(color: app_Blackcolor),
            ),
          ),
          Tab(
            iconMargin: EdgeInsets.only(bottom: 0),
            icon: ImageIcon(AssetImage("images/football.png"), size: 24),
            child: Text('رياضة', style: TextStyle(color: app_Blackcolor)),
            /* Hardcorded my text */
          ),
          Tab(
            iconMargin: EdgeInsets.only(bottom: 0),
            icon: ImageIcon(AssetImage("images/ss.png"), size: 24),
            text: 'الرئيسية', /*default tab text*/
          ),
        ],
        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        unselectedLabelStyle:
            TextStyle(fontStyle: FontStyle.normal, fontSize: 14),
      ),
    );
  }
}
