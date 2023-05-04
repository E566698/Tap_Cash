import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tab_cash/Presentation/Screen_View/after_onboarding.dart';
import '../../Data/Models/PageViewModel.dart';
import '../../Resource/Color_Manager.dart';
import '../../Resource/RouteGenerator.dart';
import '../../Resource/String_Manager.dart';
import '../../Resource/Theme.dart';
import '../Shared_Component/PageViewItem.dart';

// show some pages that explain what is the major of application

class OnBoarding extends StatelessWidget {
  //to navigator to login screen on last pageview
  var indexPageView = 0;

  // control of pageview widgets to know the number of page that I'm in
  var controller = PageController();

  //List of Data of 3 pages from class pageViewModel
  List<PageViewModel> PageViewData = [
    PageViewModel(
      img: "assets/images/bo1.png",
      title: StringManager.onBordTitle1,
      disc: StringManager.onBordDis1,
      Hsize: 3,
    ),
    PageViewModel(
      img: "assets/images/bo2.png",
      title: StringManager.onBordTitle2,
      disc: StringManager.onBordDis2,
      Hsize: 3,
    ),
    // PageViewModel(
    //   img: "assets/images/onboard3.jpg",
    //   title: StringManager.onBordTitle3,
    //   disc: StringManager.onBordDis3,
    //   Hsize: 2.5,
    // ),
  ];

  // Img + title + disc
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

  // 3 Dots move with pageView Widget by controller in pageView widgets
  Widget Dots() {
    return SmoothPageIndicator(
      count: PageViewData.length,
      controller: controller,
      effect: ExpandingDotsEffect(
        activeDotColor: ColorManager.OrangeColor,
        dotColor: ColorManager.GrayColor,
        dotHeight: 10,
        dotWidth: 10,
        expansionFactor: 2,
        spacing: 5,
      ),
    );
  }

  //Skip & Next Botton
  Widget Bottons(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Stack(
        alignment: Alignment.center,
        children: [
          // CircleAvatar(
          //   radius: 40,
          //   backgroundColor: Colors.grey.shade200,
          // ),
          InkWell(
            onTap: () {
           //    Navigator.pushReplacementNamed(context, RouteGenerator.AfterOnBordingRoute);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AfterOnBoarding()));
            },
            child: CircleAvatar(
              radius: 34,
              backgroundColor: ColorManager.DarkGrayColor,
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,

                ),

              ),
            ),
          ),
        ],
      ),
      // Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     CircleAvatar(
      //       radius: 40,
      //       backgroundColor: ColorManager.GrayColor,
      //     ),
      //     InkWell(
      //       onTap: () {
      //         if (indexPageView == PageViewData.length - 1) {
      //           Navigator.pushReplacementNamed(
      //               context, RouteGenerator.HomeRoute);
      //         }
      //         controller.nextPage(
      //             duration: Duration(
      //               milliseconds: 750,
      //             ),
      //             curve: Curves.fastLinearToSlowEaseIn);
      //       },
      //       child: CircleAvatar(
      //         radius: 34,
      //         backgroundColor: ColorManager.OrangeColor,
      //         child: Icon(
      //           Icons.arrow_forward_ios_outlined,
      //           color: Colors.white,
      //           size: 20,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.DarkGrayColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Bottons(context),
            Content(),
            Dots(),

          ]),
        ),
      ),
    );
  }
}