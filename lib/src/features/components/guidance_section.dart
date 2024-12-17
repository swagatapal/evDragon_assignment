import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:ev_dragon_assignment/src/features/components/view_more.dart';
import 'package:flutter/material.dart';

class GuidanceSection extends StatefulWidget {
  const GuidanceSection({super.key});

  @override
  State<GuidanceSection> createState() => _GuidanceSectionState();
}

class _GuidanceSectionState extends State<GuidanceSection> {
  int selectedIndex = 0;

  final List<Widget> bottomContainers = [
    TutorialsContainer(),
    TutorialsContainer(),
    Container(
        height: 150,
        color: Colors.blue,
        child: Center(child: Text('Blue Container'))),
    Container(
        height: 150,
        color: Colors.yellow,
        child: Center(child: Text('Yellow Container'))),
  ];

  final List<String> boxTitle = [
    AppString.tutorials,
    AppString.articles,
    AppString.faq,
    AppString.tips
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(4, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update the selected index
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.grad2
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black54),
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Center(
                    child: Text(
                      boxTitle[index],
                      style: TextStyle(
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: "cerapro"),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),

         SizedBox(height: height*0.02),

        bottomContainers[selectedIndex],
      ],
    );
  }
}

class TutorialsContainer extends StatelessWidget {
  const TutorialsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                      AppColors.guidanceShadow, // Shadow color
                      offset: Offset(0, 4), // X and Y offsets
                      blurRadius: 8.9, // Blur radius
                      spreadRadius: 0, // Spread radius
                    ),
                  ]
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/edu1.jpeg",
                    width: width,
                    height: height * 0.2,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: height * 0.2,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5),

              ),

            ),
            Positioned(
                top: height*0.08,
                left: width*0.4,
                child: Image.asset("assets/images/youtube.png")

            ),

            const Positioned(
              left: 20,
              bottom: 20,
              child:  Text(
                "Lectus arcu bibendum aliqua.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: AppColors.white,
                    fontFamily: "cerapro"),
              ),
            ),
            
            
          ],
        ),

        SizedBox(height: height*0.025,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                          AppColors.guidanceShadow, // Shadow color
                          offset: Offset(0, 4), // X and Y offsets
                          blurRadius: 8.9, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/edu3.jpeg",
                        width: width*0.45,
                        height: height * 0.15,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  height: height * 0.15,
                  width: width*0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),

                  ),

                ),
                Positioned(
                    top: height*0.06,
                    left: width*0.2,
                    child: Icon(Icons.play_arrow, color: AppColors.white,weight: 4,size: 40,)

                ),


              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                          AppColors.guidanceShadow, // Shadow color
                          offset: Offset(0, 4), // X and Y offsets
                          blurRadius: 8.9, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/edu4.jpeg",
                        width: width*0.45,
                        height: height * 0.15,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  height: height * 0.15,
                  width: width*0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),

                  ),

                ),
                Positioned(
                    top: height*0.06,
                    left: width*0.2,
                    child: Icon(Icons.play_arrow, color: AppColors.white,weight: 4,size: 40,)

                ),


              ],
            ),
          ],
        ),

        SizedBox(height: height*0.025,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                          AppColors.guidanceShadow, // Shadow color
                          offset: Offset(0, 4), // X and Y offsets
                          blurRadius: 8.9, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/edu3.jpeg",
                        width: width*0.45,
                        height: height * 0.15,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  height: height * 0.15,
                  width: width*0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),

                  ),

                ),
                Positioned(
                    top: height*0.06,
                    left: width*0.2,
                    child: Icon(Icons.play_arrow, color: AppColors.white,weight: 4,size: 40,)

                ),


              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                          AppColors.guidanceShadow, // Shadow color
                          offset: Offset(0, 4), // X and Y offsets
                          blurRadius: 8.9, // Blur radius
                          spreadRadius: 0, // Spread radius
                        ),
                      ]
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/edu4.jpeg",
                        width: width*0.45,
                        height: height * 0.15,
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  height: height * 0.15,
                  width: width*0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),

                  ),

                ),
                Positioned(
                    top: height*0.06,
                    left: width*0.2,
                    child: Icon(Icons.play_arrow, color: AppColors.white,weight: 4,size: 40,)

                ),


              ],
            ),
          ],
        ),

        SizedBox(height: height*0.025,),


        const ExploreMore()




      ],
    );
  }
}


class ExploreMore extends StatelessWidget {
  const ExploreMore({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      // height:height*0.05,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: AppColors.grad1.withOpacity(0.3)),
      ),

      child: Padding(
        padding: EdgeInsets.all(height * 0.015),
        child: const Text(
          AppString.explore,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.black,
              fontFamily: "cerapro"),
        ),
      ),
    );
  }
}
