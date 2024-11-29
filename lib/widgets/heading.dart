import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../config/controller_page.dart';

class Heading extends StatefulWidget {
  const Heading({
    super.key,
    required this.sizeWidth,
    required this.sectionHome,
    required this.sectionAbout,
    required this.sectionProject,
  });

  final double sizeWidth;
  final GlobalKey<State<StatefulWidget>> sectionHome;
  final GlobalKey<State<StatefulWidget>> sectionAbout;
  final GlobalKey<State<StatefulWidget>> sectionProject;

  @override
  State<Heading> createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  bool _isContactVisible = false;
  ControllerPage controllerPage = ControllerPage();

  @override
  Widget build(BuildContext context) {
    return Animate(
      delay: const Duration(milliseconds: 3500),
      effects: const [
        SlideEffect(
            begin: Offset(0, -5),
            curve: Curves.easeOut,
            duration: Duration(milliseconds: 1000))
      ],
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.isDesktop) {
            return containerHeading();
          } else if (sizingInformation.isMobile) {
            return const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "MRPS\nWebsite",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }

  Container containerHeading() {
    return Container(
      key: widget.sectionHome,
      padding: const EdgeInsets.only(left: 30),
      margin: const EdgeInsets.fromLTRB(100, 50, 100, 0),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeadingTitle(),
          headingNavBar(),
        ],
      ),
    );
  }

  SizedBox headingNavBar() {
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: widget.sizeWidth,
              ),
                  navBarButton(widget.sectionHome, 'Home'),
              SizedBox(
                width: widget.sizeWidth,
              ),
              navBarButton(widget.sectionAbout, 'About Me'),
              SizedBox(
                width: widget.sizeWidth,
              ),
              navBarButton(widget.sectionProject, 'Projects'),
              SizedBox(
                width: widget.sizeWidth,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isContactVisible = !_isContactVisible;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: secondColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    "Contact",
                    style: TextStyle(
                        fontSize: 18,
                        color: primaryCOlor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 170,
            top: 10,
            child: AnimatedOpacity(
              opacity: _isContactVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email: mridhophs@gmail.com",
                        style: GoogleFonts.overpass(
                            color: primaryCOlor, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text(
                      "Phone: +62 89629656884",
                      style: GoogleFonts.overpass(
                          color: primaryCOlor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector navBarButton(widget, title) {
    return GestureDetector(
      onTap: () {
        controllerPage.sectionFunction(widget);
      },
      child:  Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: secondColor,
        ),
      ),
    );
  }
}

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "MRPS",
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: secondColor),
    );
  }
}
