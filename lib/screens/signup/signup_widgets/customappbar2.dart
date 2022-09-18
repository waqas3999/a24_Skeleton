import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);
  final String center_text;
  String? trailing_icon;
  GestureTapCallback? ontrailingClick;
  final int traling_iconcolor;
  final int bg_color;
  final String trailingText;
  CustomAppBar2(
      {required this.center_text,
      this.trailing_icon,
      this.ontrailingClick,
      required this.bg_color,
      required this.traling_iconcolor,
      required this.trailingText});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(bg_color),
      title: Text(
        center_text,
        style: login,
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: <Widget>[
        Center(
          child: Text(
            trailingText,
            style: listtext,
          ),
        ),
        IconButton(
          onPressed: ontrailingClick,
          icon: trailing_icon == null
              ? Container()
              : ImageIcon(
                  AssetImage(trailing_icon.toString()),
                  size: 18,
                  color: (traling_iconcolor == null)
                      ? null
                      : Color(traling_iconcolor.toInt()),
                ),
        ),
      ],
    );
  }
}
