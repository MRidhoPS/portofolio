import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'card_content.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
    required this.sectionAbout,
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
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isDesktop) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleAboutMe(
                  textSize: 100,
                ),
                Contents(sizeHeight: sizeHeight, sizeWidth: sizeWidth),
              ],
            );
          } else if (sizingInformation.isMobile) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleAboutMe(
                  textSize: 30,
                ),
                Contents(sizeHeight: sizeHeight, sizeWidth: sizeWidth * 0.7),
              ],
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class Contents extends StatelessWidget {
  const Contents({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 30),

      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isDesktop) {
            return ContainerContentsDesktop(
                sizeHeight: sizeHeight, sizeWidth: sizeWidth);
          } else if (sizingInformation.isMobile) {
            return const ContainerContentsMobile();
          } else {
            return ContainerContentsDesktop(
                sizeHeight: sizeHeight, sizeWidth: sizeWidth);
          }
        },
      ),
    );
  }
}

class ContainerContentsMobile extends StatelessWidget {
  const ContainerContentsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardContainerMobile(
            title: 'Front-End',
            desc:
                'I specialize in front-end development using frameworks like Flutter to build responsive and engaging user interfaces with clean, efficient code.'),
        CardContainerMobile(
            title: 'Back-End',
            desc:
                'I develop back-end solutions with Express.js and MySQL, focusing on secure, scalable, and efficient server-side applications.'),
        CardContainerMobile(
          title: 'UI Design',
          desc:
              'As a UI designer, I use Figma to craft intuitive and visually appealing interfaces that enhance user experiences.',
        ),
      ],
    );
  }
}

class ContainerContentsDesktop extends StatelessWidget {
  const ContainerContentsDesktop({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class CardContainerMobile extends StatelessWidget {
  const CardContainerMobile({
    super.key,
    required this.title,
    required this.desc,
  });

  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.overpass(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                shadows: [
                  const Shadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(-3, 3))
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            desc,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.overpass(
                color: Colors.white70,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class TitleAboutMe extends StatelessWidget {
  const TitleAboutMe({
    super.key,
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "WHAT CAN I DO?",
      style: GoogleFonts.overpassMono(
          fontSize: textSize,
          color: primaryCOlor,
          fontWeight: FontWeight.bold,
          shadows: [
            const Shadow(
                color: Colors.black26, blurRadius: 2, offset: Offset(-3, 3))
          ]),
    );
  }
}
