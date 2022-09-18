import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: Akhbar.akhbar.length,
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0.5,
          color: app_menu_textcolor,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Material(
            color: app_menuscreen_color,
            child: ListTile(
                dense: true,
                contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                title: Text(Akhbar.akhbar[index],
                    style: txtfield_menu, textAlign: TextAlign.right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const BaseLandiing()));
                }),
          );
        },
      ),
    );
  }
}
