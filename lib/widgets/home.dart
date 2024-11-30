// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../config/colors.dart';

import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight, required this.sectionHome,
  });

  final double sizeWidth;
  final double sizeHeight;
  final GlobalKey<State<StatefulWidget>> sectionHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionHome,
      margin:
          EdgeInsets.only(left: sizeWidth * 0.073, right: sizeWidth * 0.073),
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
                child: ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    if (sizingInformation.isDesktop) {
                      return const TextRichHome(
                        size: 60,
                      );
                    } else {
                      return const TextRichHome(
                        size: 30,
                      );
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textScaler: TextScaler.linear(0.7),
                textAlign: TextAlign.justify,
                "With a strong passion for mobile development, particularly in Flutter.\nKnown for being a dedicated and enthusiastic developer with \na keen interest in building impactful mobile applications. \nA proactive learner and detail-oriented professional \nwho excels in collaborative settings.",
                style: TextStyle(color: Colors.white54),
              ).animate().fade().scale(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 1000)),
              GestureDetector(
                onTap: () {
                  downloadFile('assets/cv.pdf');
                },
                child: ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    if (sizingInformation.isDesktop) {
                      return const ButtonHire(
                        height: 45,
                        width: 150,
                        sizeText: 18,
                      );
                    } else {
                      return const ButtonHire(
                        height: 30,
                        width: 130,
                        sizeText: 15,
                      );
                    }
                  },
                ),
              ).animate().fadeIn(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeOut,
                  delay: const Duration(milliseconds: 2000))
            ],
          ),
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              if (sizingInformation.isDesktop) {
                return Animate(
                  delay: const Duration(milliseconds: 3000),
                  effects: const [
                    FadeEffect(
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.easeIn,
                    )
                  ],
                  child: SizedBox(
                    height: sizeHeight * 0.6,
                    width: sizeWidth * 0.3,
                    child: Image.asset(
                      'assets/Saly.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}

class ButtonHire extends StatelessWidget {
  const ButtonHire({
    super.key,
    required this.height,
    required this.width,
    required this.sizeText,
  });

  final double height;
  final double width;
  final double sizeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Center(
          child: Text(
        "Hire Me",
        style: TextStyle(
            color: primaryCOlor,
            fontSize: sizeText,
            fontWeight: FontWeight.w600),
      )),
    );
  }
}

class TextRichHome extends StatelessWidget {
  const TextRichHome({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'MOBILE DEVELOPER\n',
            style: TextStyle(color: secondColor, fontSize: size),
          ),
          TextSpan(
            text: 'ENTHUSIAST',
            style: TextStyle(color: Colors.white, fontSize: size),
          ),
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
