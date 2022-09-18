import 'package:a24_skeleton/screens/base_landing/custom_appbar.dart';
import 'package:a24_skeleton/screens/datepicker/DatePicker.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_screen.dart';
import 'package:a24_skeleton/screens/searching.dart';
import 'package:a24_skeleton/screens/sign_in/signin_widget/appbutton.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  DateTime? _dateTime = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leading_icon: "images/searching.png",
          onleadingClick: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Searching()));
          },
          center_icon: "images/login.PNG",
          trailing_icon: "images/menu_left.png",
          ontrailingClick: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => MenuScreen()));
          },
          traling_iconcolor: 0xFF000000,
          bg_color: 0xFFFFFFFF,
          leading_iconcolor: 0xFF000000,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("أنت غير مشترك", style: login),
              SizedBox(
                height: 10,
              ),
              Text(
                "إتشحساب اللت التحصل على أخبار مخصصه للك وتتمتع بخاصية حفظ المقالات",
                style: signup,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              AppButton(
                  label: "قم بالتسجيل",
                  textColor: 0xffF1F1F1,
                  buttoncolor: 0xFF0000FF,
                  onPress: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => DAtePicker()));
                  }),
            ],
          ),
        ));
  }
}
