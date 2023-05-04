
import 'package:flutter/material.dart';
import 'package:tab_cash/Data/Models/PageViewModel.dart';
import 'package:tab_cash/Presentation/Screen_View/Register.dart';
import 'package:tab_cash/Presentation/Screen_View/sign_in.dart';

import '../../Resource/Color_Manager.dart';
import '../../Resource/RouteGenerator.dart';
import '../../Resource/String_Manager.dart';
import '../Shared_Component/Common_Button.dart';
import '../Shared_Component/PageViewItem.dart';

class AfterOnBoarding extends StatelessWidget{
  //to navigator to login screen on last pageview
  var indexPageView = 0;

  // control of pageview widgets to know the number of page that I'm in
  var controller = PageController();

  //List of Data of 3 pages from class pageViewModel
  List<PageViewModel> PageViewData = [

    PageViewModel(
      img: "assets/images/bo3.png",
      title: StringManager.onBordTitle3,
      disc: StringManager.onBordDis3,
      Hsize: 2.5,
    ),
  ];

  Widget Content() {
    return Expanded(
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PageViewData.length,
        itemBuilder: (context, index) {
          return PageViewItem(context: context, model: PageViewData[index]);
        },
        controller: controller,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index) {
          indexPageView = index;
        },
      ),
    );
  }
  var FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [

             Content(),
                CommonButton(context, "Sign in", () {
                  if (FormKey.currentState!.validate())
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignIn()));
                  }
                }),
                SizedBox(height: 10,),

                CommonButtonTransparent(context,"Register Now", () {
                  if (FormKey.currentState!.validate())
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register()));
                  }
                })





          ]),
        ),
      ),
    );
  }

}