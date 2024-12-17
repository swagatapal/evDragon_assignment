import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class TemplateMenu extends StatelessWidget {
  final String image;
  final String text;

  const TemplateMenu({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.164,
      width: width * 0.3,
      decoration: BoxDecoration(
          color: AppColors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color:
                  AppColors.containerShadow.withOpacity(0.25), // Shadow color
              offset: const Offset(0, 4), // X and Y offsets
              blurRadius: 34, // Blur radius
              spreadRadius: 0, // Spread radius
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(
            top: height * 0.015, left: height * 0.015, right: height * 0.015),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: AppColors.white,
                  fontFamily: "cerapro"),
            ),
            Image.asset(image, height: height * 0.08, width: width * 0.3)
          ],
        ),
      ),
    );
  }
}
