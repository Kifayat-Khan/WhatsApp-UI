import 'package:flutter/material.dart';
import 'package:whtsapp_tast2/Model/colors_moderl.dart';
import 'package:whtsapp_tast2/Model/widget_functins.dart';

class ChatView extends StatelessWidget {
   ChatView({super.key,
   required this.imagePath,
   required this.userName,
   required this.messagNumbrs,
   required this.message});

String imagePath;
String userName;
int messagNumbrs;
String message;
  @override
  Widget build(BuildContext context) {

    //variables 
    Size screenSize=MediaQuery.of(context).size;
    double srcnHeight=screenSize.height;
    double scrnWidth=screenSize.width;
    


    return 
       Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: srcnHeight * .12,
            width: scrnWidth,
           // color: Colors.black,
            child: ListTile(
              leading: circularImage(imagePath.toString(), 20, userNameCrl),
              title: myText(userName, 20, userNameCrl, FontWeight.w500),
              subtitle: myText(message, 13, userMessagClr, FontWeight.w300),
              trailing: chatTralling(messagNumbrs),
            ),
          ),

          SizedBox(
            width: scrnWidth * 0.70,
            child: const Divider(
              thickness: 0.5,
              height: 5,
              
            ),
          )
        ],
      );
    
  }
}