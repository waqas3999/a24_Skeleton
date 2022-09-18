import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/base_landing/custom_appbar.dart';
import 'package:a24_skeleton/screens/sign_in/signin_widget/appbutton.dart';
import 'package:a24_skeleton/screens/sign_in/signin_widget/combine_textfield.dart';
import 'package:a24_skeleton/screens/sign_in/signin_widget/signin_btn.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_Whitecolor,
      appBar: CustomAppBar(
        center_icon: "images/login.PNG",
        ontrailingClick: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Signup2()));
        },
        trailing_icon: "images/arrow_right.png",
        bg_color: 0xFFFFFFFF,
        traling_iconcolor: 0xFF000000,
        leading_iconcolor: 0xFF000000,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("الدخول لحسابك او إشترك", style: login),
              const SizedBox(
                height: 10,
              ),
              CombineTextField(
                ispassword: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "اسم المستخدم أو رقم الهاتف",
                    style: login,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Checkbox(
                        // materialTapTargetSize:,

                        value: checked,
                        onChanged: (bool? value) {
                          setState(() {
                            checked = value!;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AppButton(
                  label: "تسجيل الدخول",
                  textColor: 0xffF1F1F1,
                  buttoncolor: 0xFF777777,
                  onPress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const BaseLandiing()));
                  }),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child:
                        Container(width: 175, height: 1, color: app_Greycolor),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "أو",
                    style: or,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Container(
                      width: 175,
                      height: 1,
                      color: app_Grey_textcolor,
                    ),
                  ),
                ],
              ),
              Signin_Btn(
                  label: "تواصل مع البريد الإلكتروني",
                  textColor: 0xFF000000,
                  imcon: "images/email.png",
                  iconcolor: 0xFFFF7F50,
                  onPress: () {
                    Navigator.pop(context);
                  }),
              Signin_Btn(
                  label: "تواصل مع الفيسبوك",
                  textColor: 0xFF000000,
                  imcon: "images/facebook.png",
                  /*iconcolor: 0xFFFF7F50, */ onPress: () {
                    Navigator.pop(context);
                  }),
              Signin_Btn(
                  label: "تسجيل الدخول",
                  textColor: 0xFF000000,
                  imcon: "images/google.png",
                  /*iconcolor: 0xFF000000,*/ onPress: () {
                    Navigator.pop(context);
                  }),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const BaseLandiing()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "اشتراك",
                        style: share,
                      ),
                      Text("?ليس لديك حساب", style: account),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
