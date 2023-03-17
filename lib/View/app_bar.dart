import 'package:flutter/material.dart';
import 'package:whtsapp_tast2/Model/colors_moderl.dart';
import 'package:whtsapp_tast2/Model/widget_functins.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

//======app bar function

AppBar whatsAppBar()
{
  return AppBar(
    backgroundColor: appClr,
  
    title: 
    myText("WhatsApp", 23, titleClr, FontWeight.w500),

    actions: [
      InkWell(
      onTap: (() {

        
        
      }),
      child: Icon(Icons.search, color: titleClr,)),
      const SizedBox(width: 10,),
      const Icon(Icons.more_vert),
     
    ],
   
      bottom: TabBar(
        indicatorColor: Colors.white,
        automaticIndicatorColorAdjustment: true,
        indicatorWeight: 4,
       // labelColor: actvieSubTitleClr,
       labelStyle:  TextStyle(color: actvieSubTitleClr,fontWeight: FontWeight.w600),
       unselectedLabelStyle:const TextStyle(fontWeight: FontWeight.w600),
        
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
        const Tab(
        
        child: Text("CHATS"),
        ),
  
       const   Tab(
        child: Text("CALLS"),
        ),
  
         const Tab(
        child:  Text("STATUS"),
        ),
      ],)
  );
}