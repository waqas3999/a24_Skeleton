import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/model/carousal_model.dart';
import 'package:a24_skeleton/screens/base_landing/model/weeklist_model.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_screen.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/rectangle_tab_indicator.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/home_model/tab_widget.dart';
import 'package:a24_skeleton/screens/navbar_views/home_vew/tabbar_view/home_main.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController3;
  late TabController _tabController;
  bool selected_text = false;
  int navigationId = 1;
  @override
  void initState() {
    _tabController = TabController(
        length: Akhbar.akhbar.length, vsync: this, initialIndex: 10);

    _tabController3 = TabController(length: 2, vsync: this, initialIndex: 1);

    // _tabController4 = TabController(
    //length: 2,
    // vsync: this,
    // );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _tabController3.dispose();
    super.dispose();
  }

  final carousalres = CarousalModel.fetchAll();
  final weeeklistrep = WeekListModel.fetchAll();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 45,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 0.5, color: app_menu_textcolor),
            bottom: BorderSide(width: 0.5, color: app_menu_textcolor),
          )),
          child: TabBar(
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
            unselectedLabelColor: tab_unselectedcolor,
            labelColor: tab_textcolor,
            isScrollable: true,
            //   indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: tab_textcolor,
            indicator: CustomTabIndicator(color: app_Bluecolor),
            tabs: [
              for (final tab in Akhbar.akhbar.reversed)
                TabWidget(title: tab, isSeperator: true),
            ],
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            unselectedLabelStyle: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              MenuScreen(),
              Center(
                child: Text("Yaallllah"),
              ),
              Center(
                child: Text("It's sunny day Habibi"),
              ),
              Center(
                child: Text("It's rainy day Habibi here "),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Home()
            ],
          ),
        ),
      ]),
    );
  }
}
