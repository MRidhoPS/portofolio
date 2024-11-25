// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';

import '../config/colors.dart';

import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100, right: 100),
      width: sizeWidth,
      height: sizeHeight * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Animate(
                effects: const [
                  FadeEffect(),
                  SlideEffect(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeOut,
                      delay: Duration(milliseconds: 200)),
                ],
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'MOBILE DEVELOPER\n',
                        style: TextStyle(
                            color: secondColor, fontSize: sizeHeight * 0.06),
                      ),
                      TextSpan(
                        text: 'OR ',
                        style: TextStyle(
                            color: Colors.white, fontSize: sizeHeight * 0.06),
                      ),
                      TextSpan(
                        text: 'UI DESIGN\n',
                        style: TextStyle(
                            color: secondColor, fontSize: sizeHeight * 0.06),
                      ),
                      TextSpan(
                        text: 'ENTHUSIAST',
                        style: TextStyle(
                            color: Colors.white, fontSize: sizeHeight * 0.06),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.justify,
                "With a strong passion for mobile development, particularly in Flutter.\nKnown for being a dedicated and enthusiastic developer with a keen interest \nin building impactful mobile applications. A proactive learner and \ndetail-oriented professional who excels in collaborative settings.",
                style: TextStyle(color: Colors.white54),
              ).animate().fade().scale(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 1000)),
              GestureDetector(
                onTap: () {
                  downloadFile('assets/cv.pdf');
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: const Center(
                      child: Text(
                    "Hire Me",
                    style: TextStyle(
                        color: primaryCOlor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ).animate().fadeIn(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 2000))
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Animate(
            delay: const Duration(milliseconds: 3000),
            effects: const [
              FadeEffect(
                duration: Duration(milliseconds: 2000),
                curve: Curves.easeIn,
              )
            ],
            child: Expanded(
              child: SizedBox(
                height: sizeHeight * 0.6,
                width: sizeWidth * 0.5,
                child: Image.asset(
                  'assets/Saly.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

downloadFile(url) {
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = 'Cv Ridho';
  anchorElement.click();
}
