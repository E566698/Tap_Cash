import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_cash/Presentation/Screen_View/On_Boarding.dart';
import 'package:tab_cash/Presentation/Screen_View/Splash_Screen.dart';
import 'package:tab_cash/Presentation/Screen_View/dash_board.dart';
import 'package:tab_cash/Presentation/Screen_View/manage_account.dart';

import 'Resource/Theme.dart';

void main() {
  runApp(TabCash());
}
class TabCash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      theme: ThemeApp,
      home:ManageAccounts() ,
    );



  }

}