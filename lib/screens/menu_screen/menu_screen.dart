import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/base_landing/custom_appbar.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_widget/combine_button.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_widget/list_sep.dart';
import 'package:a24_skeleton/screens/menu_screen/menu_widget/menu_txtfield.dart';
import 'package:a24_skeleton/screens/sign_in/sign_in.dart';
import 'package:a24_skeleton/screens/sign_in/signin_widget/round_button.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int? navigationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: app_menuscreen_color,
        appBar: CustomAppBar(
            leading_icon: "images/uaccount.png",
            onleadingClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SignIn()));
            },
            center_icon_color: 0xFFFFFFFF,
            center_icon: navigationId == 1
                ? "images/sport24.png"
                : "images/a24_logo_white.png",
            trailing_icon: "images/close.png",
            ontrailingClick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => BaseLandiing()));
            },
            traling_iconcolor: 0xFFFFFFFF,
            bg_color: 0xFF1D253C,
            leading_iconcolor: 0xFFFFFFFF),
        body: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(children: [
              Menu_textField(),
              SizedBox(
                height: 20,
              ),
              Combine_Buttton(
                onPress: (navigationid) {
                  setState(() {
                    navigationId = navigationid;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              navigationId == 1
                  ? List_Seperator(
                      litems: Akhbar.sport,
                    )
                  : List_Seperator(
                      litems: Akhbar.akhbar,
                    ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(color: app_menuscreen_color),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Round_Button(
                        onPress: () {},
                        imcon: "images/ficon.png",
                        iconcolor: 0xFF8E929E,
                      ),
                      Round_Button(
                        onPress: () {},
                        imcon: "images/instagram.png",
                        iconcolor: 0xFF8E929E,
                      ),
                      /*SizedBox(width: 15,),*/
                      Round_Button(
                        onPress: () {},
                        imcon: "images/youtube.png",
                        iconcolor: 0xFF8E929E,
                      ),
                      /* SizedBox(width: 15,),*/
                      Round_Button(
                        onPress: () {},
                        imcon: "images/twitter.png",
                        iconcolor: 0xFF8E929E,
                      ),
                      /* SizedBox(width: 15,),*/
                      Round_Button(
                        onPress: () {},
                        imcon: "images/linkedin.png",
                        iconcolor: 0xFF8E929E,
                      ),
                      /* SizedBox(width: 15,),*/
                      Round_Button(
                        onPress: () {},
                        imcon: "images/telegram.png",
                        iconcolor: 0xFF8E929E,
                      )
                    ]),
              ),
              const SizedBox(
                height: 10,
              )
            ])));
  }
}
