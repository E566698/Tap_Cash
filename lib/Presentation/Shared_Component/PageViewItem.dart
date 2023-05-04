import 'package:flutter/material.dart';

import '../../Data/Models/PageViewModel.dart';


// for Make pageView on the OnBording Screen
Widget PageViewItem({
  // class of PageViewModel with data of one item
  required PageViewModel? model,
  required BuildContext context,
}) {
  // Text + disc + Img
  return Column(
    children: [
      SizedBox(height: 50,),
      Center(
          child: Image(
            width: MediaQuery.of(context).size.width,
            image: AssetImage(
                "${model?.img}"),
            height: MediaQuery.of(context).size.height/model?.Hsize,
            //   fit: BoxFit.contain,
          )),
      Text("${model?.title}",
          style: Theme.of(context).textTheme.bodyText1

      ),
      SizedBox(height: 30,),
       Container(

         child: Text("${model?.disc}",
              style: Theme.of(context).textTheme.bodyText2, maxLines: 3,
         textAlign: TextAlign.center,
         ),
       ),




    ],
  ) ;
}