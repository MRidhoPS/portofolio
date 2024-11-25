import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';

import 'card_content.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth, required this.sectionAbout,
  });

  final double sizeHeight;
  final double sizeWidth;
  final GlobalKey<State<StatefulWidget>> sectionAbout;


  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionAbout,
      color: Colors.white,
      height: sizeHeight * 1,
      width: sizeWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WHAT CAN I DO?",
            style: GoogleFonts.overpassMono(
              fontSize: 100,
              color: primaryCOlor,
              fontWeight: FontWeight.bold,
              shadows: [
                  const Shadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(-3, 3))
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardContent(
                  sizeHeight: sizeHeight,
                  sizeWidth: sizeWidth,
                  title: 'Front-End',
                  desc:
                      "I specialize in front-end development using frameworks like Flutter to build responsive and engaging user interfaces with clean, efficient code.",
                ),
                CardContent(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth,
                    title: "Back-End",
                    desc:
                        "I develop back-end solutions with Express.js and MySQL, focusing on secure, scalable, and efficient server-side applications."),
                CardContent(
                    sizeHeight: sizeHeight,
                    sizeWidth: sizeWidth,
                    title: "UI Design",
                    desc:
                        "As a UI designer, I use Figma to craft intuitive and visually appealing interfaces that enhance user experiences."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
