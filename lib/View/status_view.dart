import 'package:flutter/material.dart';
import 'package:whtsapp_tast2/View/app_bar.dart';

import '../Model/colors_moderl.dart';
import '../Model/widget_functins.dart';

class StatusView extends StatelessWidget {
   StatusView({super.key,
  required this.imagePath,
  required this.userName});

//=====widget variables
String imagePath;
String userName;
  @override
  Widget build(BuildContext context) {

    //=======variables
     Size screenSize=MediaQuery.of(context).size;
    double srcnHeight=screenSize.height;
    double scrnWidth=screenSize.width;
    
    return 
     Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: srcnHeight * .12,
            width: scrnWidth,
           // color: Colors.black,
            child: ListTile(
              leading: statusImage(imagePath.toString(), 20, userNameCrl),
              title: myText(userName, 20, userNameCrl, FontWeight.w500),
              subtitle: statusTime(),
              
            ),
          )
          ]);
          
         
  }
}