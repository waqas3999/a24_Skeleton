import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Menu_textField extends StatelessWidget {
  const Menu_textField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.right,
      style: txtfield_menu,
      decoration: InputDecoration(
        suffixIconConstraints: const BoxConstraints(
          minHeight: 22,
          minWidth: 22,
        ),
        isDense: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: app_menu_textcolor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: app_menu_textcolor,
          ),
        ),
        hintText: "بحث عن",
        hintStyle: txtfield_menu,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset(
            "images/searching.png",
            width: 20,
            height: 20,
            color: app_menu_textcolor,
          ),
        ),
      ),
    );
  }
}
