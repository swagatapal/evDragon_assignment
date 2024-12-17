import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:ev_dragon_assignment/src/features/components/getStarted_container.dart';
import 'package:ev_dragon_assignment/src/features/components/guidance_section.dart';
import 'package:ev_dragon_assignment/src/features/components/homeScreen_header.dart';
import 'package:ev_dragon_assignment/src/features/components/home_menu.dart';
import 'package:ev_dragon_assignment/src/features/components/service_card.dart';
import 'package:ev_dragon_assignment/src/features/components/services_header.dart';
import 'package:ev_dragon_assignment/src/features/components/slider.dart';
import 'package:ev_dragon_assignment/src/features/components/template_menu.dart';
import 'package:ev_dragon_assignment/src/features/components/testimonial_container.dart';
import 'package:ev_dragon_assignment/src/features/components/view_more.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
              width: width,
            ),
            SafeArea(
              child: Column(

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width*0.025,right: width*0.025, top: width*0.02),
                    child: Column(

                      children: [
                        const HomeScreenHeader(),
                        const GetStartedContainer(),
                        SizedBox(height: height * 0.02),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeMenu(
                                image: 'assets/icons/profile.png',
                                text: AppString.profile),
                            HomeMenu(
                                image: 'assets/icons/cv.png', text: AppString.cv),
                            HomeMenu(
                                image: 'assets/icons/digital.png',
                                text: AppString.digital),
                            HomeMenu(
                                image: 'assets/icons/document.png',
                                text: AppString.document),
                            HomeMenu(
                                image: 'assets/icons/help.png',
                                text: AppString.help),
                          ],
                        ),
                        SizedBox(height: height * 0.05),
                        const Text(
                          AppString.resumeDesigns,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.white,
                              fontFamily: "cerapro"),
                        ),
                        SizedBox(height: height * 0.008),
                        Image.asset("assets/images/container_line.png"),
                        SizedBox(height: height * 0.02),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TemplateMenu(
                                image: 'assets/images/resume.png',
                                text: AppString.studentTemplates),
                            TemplateMenu(
                                image: 'assets/images/resume.png',
                                text: AppString.professionalTemplates),
                            TemplateMenu(
                                image: 'assets/images/resume.png',
                                text: AppString.internationalTemplates),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        const ViewMore(text: AppString.viewMore),
                        SizedBox(height: height * 0.04),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.03),
                        Padding(
                          padding: EdgeInsets.all(width*0.025),
                          child:  const ServicesHeader(text: AppString.services,),
                        ),
                        SizedBox(height: height * 0.025),

                        SizedBox(
                          height: height*0.35,
                          width:width,
                          child: Padding(
                            padding: EdgeInsets.only(left: width*0.025),
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: EdgeInsets.only(right: width*0.03),
                                  child: ServiceCard(),
                                );

                            }),
                          ),
                        ),

                        SizedBox(height: height * 0.03),
                        Padding(
                          padding: EdgeInsets.all(width*0.025),
                          child:  ServicesHeader(text: AppString.userHighlights,),
                        ),
                        SizedBox(height: height * 0.025),

                        Padding(
                          padding: EdgeInsets.all(width*0.025),
                          child: const CustomSlider(),
                        ),

                        SizedBox(height: height * 0.03),


                        Container(
                          width: width,
                          color: AppColors.containerColor,
                          child: Padding(
                            padding: EdgeInsets.all(width*0.025),
                            child: Column(
                              children: [
                                SizedBox(height: height * 0.06),

                                 const ServicesHeader(text: AppString.guidance,),

                                SizedBox(height: height * 0.02),

                                const GuidanceSection(),

                                SizedBox(height: height * 0.02)







                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        Padding(
                          padding: EdgeInsets.all(width*0.025),
                          child: const ServicesHeader(text: AppString.testimonials,isVisible: false,),
                        ),

                        Padding(
                          padding: EdgeInsets.all(width*0.025),
                          child: const TestimonialContainer(),
                        ),

                        SizedBox(height: height * 0.02),

                      Padding(
                        padding: EdgeInsets.all(width*0.025),
                        child: RichText(
                          text:  TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: AppColors.black.withOpacity(0.2),
                                fontFamily: "cerapro"
                            ),
                            children: const [
                              TextSpan(text: AppString.description,),
                              WidgetSpan(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                  size: 28,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),


                        SizedBox(height: height * 0.1),




                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
