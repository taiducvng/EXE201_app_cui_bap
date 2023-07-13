import 'package:flutter/material.dart';
import 'package:metravel_demo1/VIews/PageOne.dart';
import 'package:metravel_demo1/VIews/PageThree.dart';
import 'package:metravel_demo1/VIews/PageTwo.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/VIews/onboarding_provider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController pageController = PageController();
  @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Consumer<OnBoardNotifier>(builder: (context, onBoardNotifier, child) {
        return Stack(
          children: [
            PageView(
              physics: onBoardNotifier.isLastPage
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              // physics: NeverScrollableScrollPhysics(),
              children: [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
            Positioned(
                bottom: hieght! * 0.27,
                left: (200 / 1080) * hieght!,
                right: 0,
                child: SmoothPageIndicator(
                  count: 3,
                  controller: pageController,
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 10,
                    dotColor: Color(kDarkGrey.value).withOpacity(0.5),
                    activeDotColor: Color(kLight.value),
                  ),
                )),
          ],
        );
      }),
    );
  }
}
