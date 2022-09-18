import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);
  GestureTapCallback? onleadingClick;
  String? leading_icon;
  int? center_icon_color;
  String? center_icon;
  String? trailing_icon;
  GestureTapCallback? ontrailingClick;
  int? traling_iconcolor;
  final int bg_color;
  final int leading_iconcolor;

  CustomAppBar(
      {this.leading_icon,
      this.center_icon,
      this.trailing_icon,
      this.onleadingClick,
      this.ontrailingClick,
      required this.bg_color,
      required this.leading_iconcolor,
      this.traling_iconcolor,
      this.center_icon_color});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(bg_color),
      leading: IconButton(
        onPressed: onleadingClick,
        icon: leading_icon == null
            ? Container()
            : ImageIcon(
                AssetImage(leading_icon?.toString() ?? ""),
                size: 22,
                color: Color(leading_iconcolor),
              ),
      ),

      title: ImageIcon(AssetImage(center_icon?.toString() ?? ""),
          size: 70,
          color: (center_icon_color == null)
              ? null
              : Color(center_icon_color!.toInt())),

      /*SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 30,
          child: Image.asset(
            center_icon?.toString() ?? "",
            scale: 1,
            color: (center_icon_color == null)
                ? null
                : Color(center_icon_color!.toInt()),
          )),*/
      // IconButton(onPressed: (){}, icon:ImageIcon(AssetImage(center_icon?.toString()?? "")),),

      centerTitle: true,
      //shadowColor: app_Whitecolor,
      toolbarHeight: 60,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          onPressed: ontrailingClick,
          icon: trailing_icon == null
              ? Container()
              : ImageIcon(
                  AssetImage(trailing_icon?.toString() ?? ""),
                  size: 22,
                  color: (traling_iconcolor == null)
                      ? null
                      : Color(traling_iconcolor!.toInt()),
                ),
        ),
      ],
    );
  }
}
