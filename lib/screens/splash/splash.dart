import 'dart:async';

import 'package:a24_skeleton/screens/base_landing/base_landing.dart';
import 'package:a24_skeleton/screens/splash/foreground.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  late AnimationController controller;
  late Animation<double> animation1;
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => BaseLandiing())));
    final animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    var assetsImage = new AssetImage(
        'images/a24_logo_white.png'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height: 300); //<- Creates a widget that displays an image.

    return MaterialApp(
        home: Scaffold(
            /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
            body: FadeTransition(
      opacity: animation,
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Background(),
          Foreground(),
        ],
      ), //<- place where the image appears
    )));
  }
}
