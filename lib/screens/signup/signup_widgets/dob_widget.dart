import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class DOBWidgets extends StatelessWidget {
  final String title;
  final int textColor;
  final String hinttext;
  final GestureTapCallback onPress;
  DOBWidgets(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.onPress,
      required this.hinttext})
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
          // maxLines: 1,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            // hintMaxLines: 2,
            label: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  title,
                  style: txtfield_menu,
                )),
            icon: IconButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: app_menu_textcolor,
              ),
              onPressed: onPress,
            ),
            labelStyle: txtfield_signup,
            hintText: hinttext,

            hintStyle: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
