import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ViewMore extends StatelessWidget {
  final String text;

  const ViewMore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      // height:height*0.05,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: AppColors.white.withOpacity(0.3)),
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
        padding: EdgeInsets.all(height * 0.015),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: AppColors.white,
              fontFamily: "cerapro"),
        ),
      ),
    );
  }
}
