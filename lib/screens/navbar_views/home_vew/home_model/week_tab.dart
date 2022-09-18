import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class WeekTab extends StatefulWidget {
  final Function(int) onPress;
  WeekTab({Key? key, required this.onPress}) : super(key: key);

  @override
  State<WeekTab> createState() => _WeekTabState();
}

class _WeekTabState extends State<WeekTab> with TickerProviderStateMixin {
  late TabController tabController4;

  @override
  void initState() {
    tabController4 = TabController(length: 2, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    tabController4.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: app_Whitecolor,
        borderRadius: BorderRadius.circular(5),
        //border: Border.all(color: app_Whitecolor)
      ),
      child: TabBar(
          onTap: widget.onPress,
          labelPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          controller: tabController4,
          unselectedLabelColor: app_Blackcolor,
          labelColor: app_Whitecolor,
          //indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: app_Bluecolor,
          indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: app_Bluecolor),
          tabs: [
            Tab(text: "مواضيع شائعة"),
            Tab(
              text: 'الأكثر قراءة',
            ),
          ],
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          unselectedLabelStyle:
              TextStyle(fontStyle: FontStyle.normal, fontSize: 14)),
    );
  }
}
