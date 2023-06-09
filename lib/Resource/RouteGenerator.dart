import 'package:flutter/material.dart';
import 'package:tab_cash/Presentation/Screen_View/after_onboarding.dart';
import 'package:tab_cash/Presentation/Screen_View/sign_in.dart';

import '../Presentation/Screen_View/On_Boarding.dart';
import '../Presentation/Screen_View/Splash_Screen.dart';


class RouteGenerator {
  static const String RegDataScreen = "RegisterData";
  static const String LogInScreen = "LogIn";
  static const String RegPhoneScreen = "RegisterPhone";
  static const String VerificationScreen = "Verification";
  static const String SplachScreen = "Splash";
  static const String OnBoardingScreen = "OnBoarding";
  static const String afterBoardingScreen = "afterBoarding";
  static const String SplachRoute = "/Splach";
  static const String OnBordingRoute = "OnBording";
  static const String AfterOnBordingRoute = "AfterOnBording";
  static const String HomeRoute = "Home";
  static const String LoginRoute = "Login";
  static const String Common_SignUpRoute = "CommonSignUp";
  static const String Dr_SignUpRoute = "DrSignUp";
  static const String Patient_SignUpRoute = "PatientSignUp";
  static const String Emergencyscreen = "Emergency";
  static const String Settingscreen = "Setting";


  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.SplachRoute:
      // case RouteGenerator.RegDataScreen:
      //   return MaterialPageRoute(builder: (_) => RegisterData());

      case RouteGenerator.LogInScreen:
        return MaterialPageRoute(builder: (_) => LogIn());

      // case RouteGenerator.RegPhoneScreen:
      //   return MaterialPageRoute(builder: (_) => RegisterPhone());

      // case RouteGenerator.VerificationScreen:
      //   return MaterialPageRoute(builder: (_) => Verification());

      case RouteGenerator.SplachScreen:
        return MaterialPageRoute(builder: (_) => Splach());

      case RouteGenerator.OnBordingRoute:
        return MaterialPageRoute(builder: (_) => OnBoarding());
      case RouteGenerator.AfterOnBordingRoute:
        return MaterialPageRoute(builder: (_) => AfterOnBoarding());
      case RouteGenerator.LoginRoute:
        return MaterialPageRoute(builder: (_) => LogIn());
      case RouteGenerator.Common_SignUpRoute:
       // return MaterialPageRoute(builder: (_) => Common_sign_up());
      // case RouteGenerator.Dr_SignUpRoute:
      //   return MaterialPageRoute(builder: (_) => Dr_sign_up());
      // case RouteGenerator.Patient_SignUpRoute:
      //   return MaterialPageRoute(builder: (_) => Patient_sign_up());
      // case RouteGenerator.Emergencyscreen:
      //   return MaterialPageRoute(builder: (_) =>  Emergency());
      // case RouteGenerator.Settingscreen:
      //   return MaterialPageRoute(builder: (_) =>  SettingPage());

      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text("NOT FOUND"),
        ),
      ),
    );
  }
}