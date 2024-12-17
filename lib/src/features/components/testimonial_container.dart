import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class TestimonialContainer extends StatelessWidget {
  const TestimonialContainer({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.grey
      ),
      child: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius:width*0.07,
              child:Image.asset("assets/images/profilePic.png") ,
            ),

            SizedBox(width: width*0.05,),

             Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Karthik Puvada",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: AppColors.black,
                        fontFamily: "cerapro"),
                  ),


                  const Text(
                    AppString.dummyComment,
                    softWrap: true,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: AppColors.black,
                        fontFamily: "cerapro"),
                  ),

                  SizedBox(width: width*0.025,),

                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(Icons.star, color: Colors.yellow,size: 20,);

                    }),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
