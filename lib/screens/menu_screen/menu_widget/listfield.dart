import 'package:a24_skeleton/model/akhbar.dart';
import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class HomeField extends StatelessWidget {
  final String label;

  const HomeField({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: app_menuscreen_color,
      ),
      child: GestureDetector(
        onTap: () {
          if (Akhbar.akhbar.contains(label)) {
            Akhbar.selecteditem = label;
          }
          Akhbar.selecteditem = label;
          Navigator.pop(context);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => BaseLandiing()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(label, style: listtile_text),
            Column(
              children: [
                Divider(
                  thickness: 1,
                  height: 0.6,
                  color: app_menu_textcolor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
