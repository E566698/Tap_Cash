
import 'package:flutter/material.dart';
import 'package:tab_cash/Resource/RouteGenerator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../Resource/Color_Manager.dart';
import '../../Resource/String_Manager.dart';
import '../../Resource/Theme.dart';
import 'On_Boarding.dart';

// Page start at the begin of application

class Splach extends StatefulWidget {
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  //delay for 4 sec only Then go to next page
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4, milliseconds: 500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OnBoarding()));
   //   Navigator.pushReplacementNamed(context,RouteGenerator.OnBordingRoute);
    });
  }



  // Welcom Text Animation
  Widget AnimatedText() {
    return AnimatedTextKit(
      totalRepeatCount: 1,
      animatedTexts: [
        TyperAnimatedText(StringManager.SplachTxt1,
            textStyle: txtStyle(ColorManager.OrangeColor, 30.0, true)),
        TyperAnimatedText(StringManager.SplachTxt2,
            textStyle: txtStyle(ColorManager.OrangeColor, 30.0, true)),
        TyperAnimatedText(StringManager.SplachTxt3,
            textStyle: txtStyle(ColorManager.OrangeColor, 30.0, true)),

      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: Stack(
        children: [
          Image.asset("assets/images/Splash.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                AnimatedText(),
              ],
            ),
          ),
        ),
    ]
      ),
    );
  }
}