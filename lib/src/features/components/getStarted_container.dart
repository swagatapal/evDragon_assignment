import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class GetStartedContainer extends StatelessWidget {
  const GetStartedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
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
            top: width * 0.02,
            bottom: width * 0.02,
            left: width * 0.03,
            right: width * 0.06),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  AppString.getStarted,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppColors.white,
                      fontFamily: "cerapro"),
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                const Text(
                  AppString.createCv,
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                      color: AppColors.white,
                      fontFamily: "cerapro"),
                )
              ],
            ),
            const Icon(
              Icons.arrow_right_alt,
              size: 40,
              weight: 2,
              color: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
