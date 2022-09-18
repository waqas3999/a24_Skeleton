import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class List_Seperator extends StatefulWidget {
  List<String> litems;
  List_Seperator({
    Key? key,
    required this.litems,
  }) : super(key: key);

  @override
  State<List_Seperator> createState() => _List_SeperatorState();
}

class _List_SeperatorState extends State<List_Seperator> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.only(top: 5),
            //shrinkWrap: true,
            itemExtent: 50,
            itemCount: widget.litems.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => BaseLandiing()));
                },
                child: Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.litems[index],
                            style: txtfield_menu,
                            textAlign: TextAlign.right,
                          ),
                          Divider(
                            color: app_menu_textcolor,
                            height: 0.5,
                          )
                        ])),
              );
            }));
  }
}
