import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huree_event_app/intro_screens/intro_page_1.dart';
import 'package:huree_event_app/intro_screens/intro_page_2.dart';
import 'package:huree_event_app/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

// dot ali huudsan deer bgaag haruulah controller
PageController _controller = PageController();

//suuliin huudas esvel bhq ued
bool onLastPage = false;

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //page view
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),

        //dot indicator
        Container(
          alignment: Alignment(0, 0.85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip
              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Алгасах')),

              //dot indicator
              SmoothPageIndicator(controller: _controller, count: 3),

              //next or done
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        ///Navigator.push(context,
                        ///MaterialPageRoute(builder: (context) {
                        ///return LoginPage();
                        ///}));
                      },
                      child: Text('Дууссан'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text('Дараах'),
                    ),
            ],
          ),
        )
      ],
    ));
  }
}
