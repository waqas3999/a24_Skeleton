import 'dart:io';

import 'package:a24_skeleton/screens/menu_screen/menu_screen.dart';
import 'package:a24_skeleton/screens/signup/signup_widgets/combine_textfield_d.dart';
import 'package:a24_skeleton/screens/signup/signup_widgets/customappbar2.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DAtePicker extends StatefulWidget {
  DAtePicker({Key? key}) : super(key: key);

  @override
  State<DAtePicker> createState() => _DAtePickerState();
}

class _DAtePickerState extends State<DAtePicker> {
  PickedFile? _imagefile;
  final ImagePicker _picker = ImagePicker();
  TextEditingController mail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: CustomAppBar2(
        center_text: "تفاصيل حسابي",
        trailing_icon: "images/arrow_right.png",
        ontrailingClick: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MenuScreen()));
        },
        traling_iconcolor: 0xFF000000,
        bg_color: 0xFFFFFFFF,
        trailingText: 'الرجوع',
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageProfile(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mail;
                      });
                    },
                    child: Container(
                      width: 25,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, border: Border.all()),
                      child: Icon(
                        Icons.edit,
                        size: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "إسم المستخدم",
                    style: login,
                  ),
                ],
              ),
              /* TextField(
                controller: mail,
              ),*/
              Text(
                "waqasusman3999@gmail.com",
              ),
              SizedBox(
                height: 10,
              ),
              CombineTextField_d()
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*
              FlatButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label: Text("Camera")),*/
              TextButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.camera);
                  },
                  icon: Icon(
                    Icons.camera,
                    color: app_Blackcolor,
                  ),
                  label: Text(
                    "Camera",
                    style: signup,
                  )),
              TextButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.gallery);
                  },
                  icon: Icon(
                    Icons.image,
                    color: app_Blackcolor,
                  ),
                  label: Text(
                    "Gallery",
                    style: signup,
                  )),
/*
              FlatButton.icon(
                  onPressed: () {
                    takephoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text("Gallery"))*/
            ],
          )
        ],
      ),
    );
  }

  void takephoto(ImageSource imageSource) async {
    final PickedFile = await _picker.getImage(source: imageSource);
    setState(() {
      _imagefile = PickedFile!;
    });
  }

  Widget imageProfile() {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          //*profile.PNG*/
          backgroundImage: _imagefile == null
              ? AssetImage("images/beard.png") as ImageProvider
              : FileImage(File(_imagefile!.path)),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomsheet()),
                );
              },
              child: Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                    color: camera_bg_Color, shape: BoxShape.circle),
                child: Icon(
                  Icons.camera_alt,
                  size: 14,
                  color: app_Whitecolor,
                ),
              ),
            ))
      ],
    );
  }
}
