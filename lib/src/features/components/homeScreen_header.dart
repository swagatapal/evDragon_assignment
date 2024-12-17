import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/logo.png", height: height*0.08,width: width*0.4,),
        Row(
          children: [
            Image.asset("assets/icons/notification.png", height: height*0.05),
            SizedBox(width: width*0.04,),
            CircleAvatar(
              radius:width*0.07,
              child:Image.asset("assets/images/profilePic.png") ,
            )
          ],
        )
      ],
    );
  }
}
