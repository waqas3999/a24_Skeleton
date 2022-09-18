import 'package:a24_skeleton/screens/sign_in/signin_widget/textfield_signin.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class CombineTextField extends StatelessWidget {
  bool ispassword;
  CombineTextField({Key? key, required this.ispassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border(
            //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
            top: BorderSide(width: 0.5, color: app_Grey_textcolor),
            left: BorderSide(width: 0.5, color: app_Grey_textcolor),
            right: BorderSide(width: 0.5, color: app_Grey_textcolor),
            bottom: BorderSide(width: 0.5, color: app_Grey_textcolor),
          )),
      child: Column(
        children: [
          TextField_SignIn(
            title: "اسم المستخدم أو رقم الهاتف",
            textColor: 0xFF000000,
            keyboardType: TextInputType.emailAddress,
            obscuretext: false,
          ),
          Divider(
            height: 0.5,
            color: app_Grey_textcolor,
          ),
          ispassword == true
              ? Container()
              : TextField_SignIn(
                  title: "كلمة المرور",
                  textColor: 0xFF000000,
                  keyboardType: TextInputType.visiblePassword,
                  obscuretext: true,
                )
        ],
      ),
    );
  }
}
