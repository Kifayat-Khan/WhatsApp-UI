import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whtsapp_tast2/Model/colors_moderl.dart';
import 'package:intl/intl.dart';


//========circle image functi0n===============
 circularImage(String imgeSrc, double raduis, Color backClr)
 {
  return
  CircleAvatar(
   // radius: raduis,
    
    backgroundImage:  AssetImage(imgeSrc),
    backgroundColor: backClr,
  );
 }

//============ Text function========
 myText(String txt, double fntsize, Color clr, FontWeight fntwt)
 {
  return Text(
    txt,
    style: TextStyle(color: clr,fontSize: fntsize,fontWeight: fntwt),
  );
 }


 //============tralling data=========
 chatTralling(int nmbr)
 {
    var hour=DateTime.now().hour;
    var minutes=DateTime.now().minute;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("$hour : $minutes",style: TextStyle(color: chatNotifyClr,fontSize: 18,fontWeight: FontWeight.w400),
      ),
      if(nmbr>0)
      CircleAvatar(
        backgroundColor: chatNotifyClr,
        radius: 11,
        child: Text(nmbr.toString(), style:const TextStyle(color: Colors.white, fontSize: 14),),
      )


    ],
  );

 }//chat tralling


 //=======class manue sub title function
 callsTime(IconData callingIcon)
 {
  var month=DateFormat.LLLL().format(DateTime.now());
  var time=DateFormat.j().format(DateTime.now());
  return Row(children: [
    Icon(callingIcon,color: Colors.red,),
    Text("$month, $time"),

  ],);
 }


 //=====status sub title function
  statusTime()
 {
  var day=DateFormat.EEEE().format(DateTime.now());
  var time=DateFormat.j().format(DateTime.now());
  return Row(children: [
    Text("$day, $time"),

  ],);
 }


 //=====status circle image function
 statusImage(String imgeSrc, double raduis, Color backClr)
 {
  return
  CircleAvatar(
    backgroundColor: chatNotifyClr,
    radius: 22,
    child: CircleAvatar(
     // radius: raduis,
      
      backgroundImage:  AssetImage(imgeSrc),
      backgroundColor: backClr,
    ),
  );
 }


 //=====search bar tex field
 