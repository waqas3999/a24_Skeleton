import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Signin_Btn extends StatelessWidget {
  final String label;
  final int textColor;
  final GestureTapCallback onPress;
  String? imcon;
  IconData? iconData;
  int? iconcolor;
  int? buttoncolor;
  String? name;
  Signin_Btn(
      {Key? key,
      required this.label,
      required this.textColor,
      required this.onPress,
      this.imcon,
      this.buttoncolor,
      this.iconcolor,
      this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.centerRight,
        height: 52,
        width: widthVariable,
        decoration: BoxDecoration(
            border: Border.all(color: app_Grey_textcolor),
            color: buttoncolor == null ? null : Color(buttoncolor!.toInt()),
            borderRadius: BorderRadius.circular(5)),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Image(
                  image: AssetImage(imcon?.toString() ?? ""),
                  color: iconcolor == null
                      ? null
                      : Color(
                          iconcolor!.toInt(),
                        ),
                ),
              ),
              const Spacer(),
              Text(label,
                  style: TextStyle(
                    color: Color(textColor),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
