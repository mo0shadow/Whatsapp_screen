import 'dart:ffi';

import 'package:flutter/material.dart';

import 'chat_messages.dart' show ChatMessages;

class HomeScreen extends StatelessWidget {
  static const String homeScreenRoute = '/home';
  static const Color green = Color(0xff168C4B);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff181818);
  static const Color reciever = Color(0xff232D36);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: black,
        image: DecorationImage(
          image: AssetImage('assets/images/Background.png'),
          fit: BoxFit.cover,
        ),
      ),

      child: Scaffold(
       backgroundColor: Colors.transparent,
       appBar: AppBar(
         backgroundColor:green,
         leadingWidth: 35,
         leading:Padding(
         padding:EdgeInsetsDirectional.only(start: 6),
         child:  IconButton(
             onPressed: () {}, icon:Image.asset('assets/icons/back.png'),
           ),
         ),
         title: Row(
           children: [
             CircleAvatar(backgroundImage: AssetImage('assets/images/profile_image.png',)),
             Padding(padding: EdgeInsetsDirectional.only(start: 10),
             child: Text('Mo Adel',
               style:TextStyle(
                   color: white,
                   fontSize: 18,
                   fontWeight:FontWeight.bold ),
             ),
             )
           ],
         ),
         actions: [
           IconButton(
               onPressed: () {},
               icon: ImageIcon(
                 AssetImage('assets/icons/phone.png'),color: white,size: 28,)
           ),


           IconButton(onPressed: () {},
               icon:ImageIcon(
                 AssetImage('assets/icons/video.png'),color: white,size: 28,)
           ),

           IconButton(onPressed: () {},
             icon: ImageIcon(
               AssetImage('assets/icons/options.png'),color: white,size: 28,)
           ),

         ],
       ),

        body: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 18,),
                ChatMessages(TextMessage: 'HI bro😊 can you give me you opinion', message_color:green, IsSender: true,),
                SizedBox(height: 18,),
                ChatMessages(TextMessage: "About What?😀", message_color: reciever, IsSender:false),
                SizedBox(height: 18,),
                ChatMessages(TextMessage: "I drew tinjen ozoui from demon slayer it took me like a week before i could draw it😍 "
                  , message_color:green, IsSender: true,),
                SizedBox(height: 10,),
                ChatMessages(TextMessage: "what a Great Content Tp learn Flutter",
                  message_color:green, IsSender: true,ImageMessage:'assets/images/diamond.png',IsImage:true,),
                SizedBox(height: 18,),
                ChatMessages(TextMessage: "wowwwwwwwwwww🔥🐦‍🔥❤️‍🔥",
                    message_color: reciever, IsSender: false),
                ChatMessages(TextMessage: "I wanna see it in real🔥",
                    message_color: reciever, IsSender: false)

              ]
          ) ,
        ),


        bottomNavigationBar:
        BottomAppBar(
          color:Colors.transparent,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child:TextField(
                    style:TextStyle(color: white,fontSize:14),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      prefixIcon: Padding(padding: EdgeInsets.only(left: 16.0, right: 4.0),
                        child:ImageIcon(AssetImage('assets/icons/Camera.png'),color:white ,)
                      ),

                      suffixIcon:Padding(padding: EdgeInsets.only(left: 8.0, right: 18.0),
                          child:ImageIcon(AssetImage('assets/icons/Send.png'),color:white ,)
                      ) ,




                        hintText: 'Type a message',hintStyle: TextStyle(color: white,fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: green,strokeAlign: BorderSide.strokeAlignCenter,width: 1)
                      )
                      ,focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              color: green,strokeAlign: BorderSide.strokeAlignCenter,width: 2)
                         )
                      ,)
                    
                ) ,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CircleAvatar(backgroundColor: green,
                    child: IconButton(onPressed:(){},
                      icon:ImageIcon(AssetImage('assets/icons/Mic.png',),color: white,size: 28,),
                    )
                ),


              )
              
            ],
          ),

        )

     )
    );
  }
}

