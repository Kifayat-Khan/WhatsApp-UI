import 'package:flutter/material.dart';
import 'package:whtsapp_tast2/Model/user_list.dart';
import 'package:whtsapp_tast2/View/app_bar.dart';
import 'package:whtsapp_tast2/View/calls_view.dart';
import 'package:whtsapp_tast2/View/chat_view.dart';
import 'package:whtsapp_tast2/View/status_view.dart';

class mainController extends StatefulWidget {
   mainController({super.key});
  

  @override
  State<mainController> createState() => _mainControllerState();
}
 
class _mainControllerState extends State<mainController> {
 
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: whatsAppBar(),
        
    
        body: TabBarView(
          //controller: _tabController,
          children: 
        [
          //=====chat view
            ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
              return ChatView(
                imagePath: user[index].imagePath.toString(),
                 userName: user[index].uName.toString(),
                  messagNumbrs: int.parse(user[index].messagNumbrs.toString()),
                  message: user[index].message.toString(),
                  );

            }),

          //==========calls view
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
              return CallsView(imagePath: user[index].imagePath.toString(), 
              userName: user[index].uName.toString());

            }),


            //=========status view
            ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
              return StatusView(imagePath: user[index].imagePath.toString(),
               userName: user[index].uName.toString());

            })
    
        ])),
    );
  }

  
}

txt()
{
  
}