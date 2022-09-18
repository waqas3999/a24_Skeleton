import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class TextField_SignIn extends StatelessWidget {
  final String title;
  final TextInputType keyboardType;
  final int textColor;
  int? sffixicon;
  final bool obscuretext;
  TextField_SignIn(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.keyboardType,
      required this.obscuretext,
      this.sffixicon})
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
          obscureText: obscuretext,
          //  maxLines: 1,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: InputBorder.none,
            //  hintMaxLines: 1,
            label: Align(
                alignment: Alignment.centerRight,
                child: Text(title, style: txtfield_signup)),
            labelStyle: textfield_style,
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
