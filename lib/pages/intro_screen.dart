import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_app2/pages/page_1.dart';
import 'package:task_app2/pages/page_2.dart';
import 'package:task_app2/pages/page_3.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  //controller for pages transitioning into each other
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //pageview
        PageView(
          controller: _pageController,
          children: [
            //page 1
            Page1(),

            //page2
            Page2(),

            //page3
            Page3(),
          ],
        ),

        //dot indicator
        Container(
          alignment: Alignment(0, 0.85),
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotHeight: 15,
              dotWidth: 15,
              activeDotColor: Colors.black,
              dotColor: Colors.grey,
            ),
          ),
        )
      ],
    ));
  }
}
