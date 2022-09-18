import 'package:flutter/material.dart';
class Button_Menu extends StatelessWidget {
  final String label;
  final int textColor;
  String? imcon;
  IconData? iconData;
  int? iconcolor;
  int? buttoncolor;
  Button_Menu({Key? key, required this.label,required this.textColor, this.imcon,this.buttoncolor,this.iconcolor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top :4),
      padding: const EdgeInsets.all(2),
      alignment: Alignment.centerRight,
      height: 50,
      width:195,
      decoration: BoxDecoration(
         // border: Border.all(color: app_Grey_textcolor),
        //  color:  buttoncolor == null ? null : Color(buttoncolor!.toInt()),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Align(
        //    alignment: Alignment.center,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SizedBox(width:30,
                height:30, child:Image(image: AssetImage(imcon?.toString() ?? ""),
                  color: iconcolor == null ? null : Color(iconcolor!.toInt(),),),),
              const SizedBox(width: 5,),
              Text(label,style:TextStyle(
                color: Color(textColor),
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              )),
            ]),
      ),
    );
  }
}
