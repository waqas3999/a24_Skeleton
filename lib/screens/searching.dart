import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: app_Whitecolor,
        appBar: AppBar(
            backgroundColor: app_Whitecolor,
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => BaseLandiing()));
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 40,
                  color: Colors.black,
                )),
            title: Image.asset(
              "images/login.PNG",
              scale: 2.5,
            ),
            centerTitle: true,
            shadowColor: app_Whitecolor,
            toolbarHeight: 70,
            elevation: 0.0),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Bhas",
                  style: home_heading2,
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border(
                          //center: BorderSide(width: 1.0, color:app_Grey_textcolor),
                          top: BorderSide(width: 1, color: app_Grey_textcolor),
                          left: BorderSide(width: 1, color: app_Grey_textcolor),
                          right:
                              BorderSide(width: 1, color: app_Grey_textcolor),
                          bottom:
                              BorderSide(width: 1, color: app_Grey_textcolor),
                        )),
                    child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          "Bhas",
                          style: txtfield_menu,
                          textAlign: TextAlign.right,
                        ))),
                /*        CustomPaint(
                  child: Container(
                    width: 300,
                    height: 200,
                    color: Colors.amberAccent,
                  ),
                  foregroundPainter: LinePainter(),
                ),
        */
                /* ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 5,
                    color: app_Bluecolor,
                  ),
                ),*/
              ]),
        ));
  }
}
/*
class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = app_Bluecolor
      ..strokeWidth = 10;

    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTWH(
              size.width / 2 - size.height / 2,
              0,
              60,
              5,
            ),
            Radius.circular(10.0)),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}*/
