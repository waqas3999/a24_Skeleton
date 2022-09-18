import 'package:a24_skeleton/screens/signup/signup_widgets/customappbar2.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class ForeignExcangeSetting extends StatelessWidget {
  ForeignExcangeSetting({Key? key}) : super(key: key);
  bool isSelect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar2(
          center_text: "تفاصيل حسابي",
          trailing_icon: "images/arrow_right.png",
          ontrailingClick: () {
            Navigator.pop(context);
          },
          traling_iconcolor: 0xFF000000,
          bg_color: 0xFFFFFFFF,
          trailingText: 'الرجوع',
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تفاصيل حسابي",
                    style: home_heading2,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
