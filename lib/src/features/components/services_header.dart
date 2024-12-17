import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:ev_dragon_assignment/src/features/components/gradient_text.dart';
import 'package:flutter/material.dart';

class ServicesHeader extends StatelessWidget {
  final String text;
  final bool isVisible;
   const ServicesHeader({super.key, required this.text, this.isVisible = true});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,textAlign: TextAlign.center, style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.black,
            fontFamily: "cerapro"
        ),),

        Visibility(
          visible:isVisible,
          child: const GradientText(
              AppString.viewMore,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  fontFamily: "cerapro"
              ),
              gradient: LinearGradient(colors: [
                AppColors.grad1,
                AppColors.grad2,

              ])),
        )
      ],
    );
  }
}
