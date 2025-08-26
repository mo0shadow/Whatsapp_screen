import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  final String TextMessage ;
  final String ImageMessage ;
  final Color message_color;
  final bool IsSender ;
  final bool IsImage ;


  const ChatMessages({
    required this.TextMessage,
    required this.message_color,
    required this.IsSender,
    this.IsImage=false,
    this.ImageMessage='',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:   IsSender ?
      MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Flexible(
          child:   Container(
              margin: EdgeInsetsGeometry.all(15),
              decoration: BoxDecoration(
                color: message_color,
                borderRadius: IsSender ? BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ) : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                ),
              child: Padding(
              padding: EdgeInsets.all(18),
                child: IsImage? Image(image: AssetImage(ImageMessage),width:300 ,) : Text(TextMessage,
                   style: TextStyle(color:Colors.white,fontWeight: FontWeight.normal,fontSize:16),),
                      ),
          
                  ),

        ),
      ],
    );
  }
}
