import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class DateWidgets extends StatelessWidget {
  final String title;
  final int textColor;
  final GestureTapCallback onPress;
  DateWidgets(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.onPress})
      : super(key: key);
  @override
  final TextEditingController txtxtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextFormField(
          textAlign: TextAlign.right,
          controller: txtxtrl,
          // maxLines: 2,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            //   hintMaxLines: 2,
            label: Align(
                alignment: Alignment.centerRight,
                child: Text(title, style: txtfield_signup)),
            icon: IconButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: app_menu_textcolor,
              ),
              onPressed: onPress,
            ),
            labelStyle: txtfield_menu,
            hintText: title,
            hintStyle: TextStyle(
                fontFamily: "Poppins",
                color: app_Blackcolor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
