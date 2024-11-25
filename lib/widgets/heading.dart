import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';

import '../config/controller_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

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
    return Padding(
      key: widget.sectionHome,
      padding: const EdgeInsets.fromLTRB(100, 50, 50, 20),
      child: Animate(
        delay: const Duration(milliseconds: 3500),
        effects: const [
          SlideEffect(
            begin: Offset(0, -5),
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 1000)
        )],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Portofolio",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: secondColor),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widget.sizeWidth * 0.07,
                        ),
                        const Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 18,
                            color: secondColor,
                          ),
                        ),
                        SizedBox(
                          width: widget.sizeWidth * 0.07,
                        ),
                        GestureDetector(
                          onTap: () {
                            controllerPage.sectionFunction(widget.sectionAbout);
                          },
                          child: const Text(
                            "About Me",
                            style: TextStyle(
                              fontSize: 18,
                              color: secondColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widget.sizeWidth * 0.07,
                        ),
                        GestureDetector(
                          onTap: () {
                            controllerPage.sectionFunction(widget.sectionProject);
                          },
                          child: const Text(
                            "Project",
                            style: TextStyle(
                              fontSize: 18,
                              color: secondColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widget.sizeWidth * 0.07,
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
                                      color: primaryCOlor,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              Text(
                                "Phone: +62 89629656884",
                                style: GoogleFonts.overpass(
                                    color: primaryCOlor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
