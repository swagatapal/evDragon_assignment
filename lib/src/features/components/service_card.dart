import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width:width*0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset("assets/images/service1.jpeg", height: height*0.35,width: width*0.6,fit: BoxFit.cover,),

            // Blackish overlay
            Container(
              height: height*0.35,
              width: width*0.6,
              color: Colors.black.withOpacity(0.5), // Darkens the image
            ),
            // Highlighted Text
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppString.lifeTimeAccess,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.white,
                          fontFamily: "cerapro"),
                    ),
                    const Text(
                      "Rs : 1999.00",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                          color: AppColors.white,
                          fontFamily: "cerapro"),
                    ),
                    Text(
                      AppString.serviceCardDescr,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: AppColors.white.withOpacity(0.7),
                        fontFamily: "cerapro",
                      ),
                      softWrap: true,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.favorite, color: AppColors.red,size: 20,),
                        SizedBox(width: 5,),
                        Text(
                          "78.4""k",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColors.white,
                              fontFamily: "cerapro"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
