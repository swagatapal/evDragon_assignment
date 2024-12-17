import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  final String image;
  final String text;

  const HomeMenu({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Image.asset(image, height: height*0.05,width: width*0.1),
        SizedBox(
          height: height * 0.008,
        ),
         Text(text,textAlign: TextAlign.center, style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: AppColors.white,
            fontFamily: "cerapro"
        ),)
      ],
    );
  }
}
