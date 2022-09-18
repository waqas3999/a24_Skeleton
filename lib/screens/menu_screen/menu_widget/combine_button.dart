import 'package:a24_skeleton/screens/menu_screen/menu_widget/btn_menu.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Combine_Buttton extends StatelessWidget {
  final Function(int) onPress;
  Combine_Buttton({Key? key, required this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onPress(1);
            },
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  color: app_Bluecolor,
                ),
                child: Button_Menu(
                  label: "سبورت",
                  buttoncolor: 0xFF234EC4,
                  textColor: 0xFFFFFFFF,
                  imcon: "images/24b.PNG", /*iconcolor: 0xFFFFFFFF,*/
                )),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onPress(2);
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    color: app_redcolor),
                child: Button_Menu(
                  label: "أخبار",
                  buttoncolor: 0xFFD62B47,
                  textColor: 0xFFFFFFFF,
                  imcon: "images/24c.PNG", /*iconcolor: 0xFFD62B47,*/
                )),
          ),
        )
      ]),
    );
  }
}
