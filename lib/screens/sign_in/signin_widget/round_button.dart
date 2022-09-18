import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Round_Button extends StatelessWidget {
  final GestureTapCallback onPress;
  String? imcon;
  int? iconcolor;
  Round_Button({Key? key, required this.onPress, this.imcon, this.iconcolor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //double heightVariable = MediaQuery.of(context).size.height;
    //double widthVariable = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        //margin: const EdgeInsets.only(top :4),
        //padding: const EdgeInsets.all(2),
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: app_menu_roundbuttoncolor),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(14),
          child: Image(
            image: AssetImage(
              imcon?.toString() ?? "",
            ),
            color: iconcolor == null
                ? null
                : Color(
                    iconcolor!.toInt(),
                  ),
          ),
        ),
      ),
    );
  }
}
