import 'package:a24_skeleton/screens/foreignexcahngesetting/foreign_ex_setting.dart';
import 'package:a24_skeleton/screens/signup/signup_widgets/customappbar2.dart';
import 'package:flutter/material.dart';

class ChooseTeam extends StatelessWidget {
  const ChooseTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar2(
        center_text: "تفاصيل حسابي",
        trailing_icon: "images/arrow_right.png",
        ontrailingClick: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => ForeignExcangeSetting()));
        },
        traling_iconcolor: 0xFF000000,
        bg_color: 0xFFFFFFFF,
        trailingText: 'الرجوع',
      ),
      body: Column(
        children: [Text("ChooseTEam")],
      ),
    );
  }
}
