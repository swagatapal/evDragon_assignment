import 'package:carousel_slider/carousel_slider.dart';
import 'package:ev_dragon_assignment/src/core/utils/colors.dart';
import 'package:ev_dragon_assignment/src/core/utils/strings.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {

  int _current = 0;
  final List<String> _carouselTexts = [
    "Welcome to Flutter!",
    "Build beautiful UIs",
    "Develop Mobile, Web, and Desktop Apps",
    "Learn Carousel Slider",
  ];

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Carousel Slider
        CarouselSlider.builder(
          itemCount: _carouselTexts.length,
          options: CarouselOptions(
            height: height*0.2,
            viewportFraction: 1.0,
            autoPlay: false, // Auto slide
            enlargeCenterPage: false, // Enlarges active slide
            onPageChanged: (index, reason) {
              setState(() {
                _current = index; // Update the active index
              });
            },
          ),
          itemBuilder: (context, index, realIdx) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.sliderColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.timer,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.black,
                              fontFamily: "cerapro"),
                        ),

                        Text(
                          AppString.specialDiscount,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.sliderTextColor,
                              fontFamily: "cerapro"),
                        ),

                        Text(
                          AppString.everySubscription,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.black,
                              fontFamily: "cerapro"),
                        ),
                      ],
                    ),
                    
                    Image.asset("assets/images/offer.png", height: height*0.1,width: width*0.3,)


                  ],
                )
              ),
            );
          },
        ),

        SizedBox(height: height*0.025),

        // Slide Change Indicator (Dots)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _carouselTexts
              .asMap()
              .entries
              .map((entry) {
            return GestureDetector(
              onTap: () =>
                  setState(() {
                    _current = entry.key;
                  }),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin:  EdgeInsets.symmetric(horizontal: width*0.01),
                width: _current == entry.key ? width*0.06 : width*0.02,
                height: _current == entry.key ? height*0.01 : width*0.02,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _current == entry.key
                      ? AppColors.grad2
                      : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
