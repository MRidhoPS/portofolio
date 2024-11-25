import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';
import 'package:portofolio/widgets/detail_projects.dart';

class Project extends StatelessWidget {
  const Project(
      {super.key,
      required this.sizeHeight,
      required this.sizeWidth,
      required this.sectionProject});

  final double sizeHeight;
  final double sizeWidth;

  final GlobalKey<State<StatefulWidget>> sectionProject;

  @override
  Widget build(BuildContext context) {
    const String titleProject1 = 'attendance';
    const String titleProject2 = 'alquran';
    const String titleProject3 = 'tracker';

    return Container(
        key: sectionProject,
        color: primaryCOlor,
        height: sizeHeight * 1,
        width: sizeWidth,
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                height: sizeHeight,
                width: sizeWidth * 0.4,
                color: const Color.fromARGB(255, 27, 31, 75),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "My Latest ",
                        style: GoogleFonts.overpassMono(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      TextSpan(
                        text: "Projects",
                        style: GoogleFonts.overpassMono(
                            color: secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    ])),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Check out my latest projects, showcasing my skills in front-end development, back-end solutions, and UI design. Each project reflects my commitment to creating functional, user-friendly, and visually appealing digital experiences.",
                      style: GoogleFonts.overpass(
                          fontSize: 22,
                          color: Colors.white70,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                width: sizeWidth * 0.5,
                height: sizeHeight * 0.9,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 27, 31, 75),
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailProjects(
                                title: 'Students',
                                titleProject: titleProject1,
                              ),
                            )),
                        child: SizedBox(
                          width: 500,
                          height: sizeHeight,
                          child: Hero(
                            tag: titleProject1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/sa4.png',
                                    fit: BoxFit.cover,
                                    width: 500,
                                    height: sizeHeight,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 30),
                                      width: sizeWidth,
                                      height: 150,
                                      color: Colors.black54,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Align text to the left
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Student Attendance",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text(
                                            "Tech Stack: Flutter, Express Js, MySQL",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailProjects(
                                title: 'AlQuran',
                                titleProject: titleProject2,
                              ),
                            )),
                        child: SizedBox(
                          width: 500,
                          height: sizeHeight,
                          // color: Colors.blue,
                          child: Hero(
                            tag: titleProject2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/alquran2.png',
                                    fit: BoxFit.cover,
                                    width: 500,
                                    height: sizeHeight,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 30),
                                      width: sizeWidth,
                                      height: 150,
                                      color: Colors.black54,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Align text to the left
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Al-Quran App",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text(
                                            "Tech Stack: Flutter",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailProjects(
                                title: 'Money',
                                titleProject: titleProject3,
                              ),
                            )),
                        child: SizedBox(
                          width: 500,
                          height: sizeHeight,
                          // color: Colors.blue,
                          child: Hero(
                            tag: titleProject3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/mt2.png',
                                    fit: BoxFit.cover,
                                    width: 500,
                                    height: sizeHeight,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 30),
                                      width: sizeWidth,
                                      height: 150,
                                      color: Colors.black54,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start, // Align text to the left
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Money Trackers",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text(
                                            "Tech Stack: Flutter, Express Js, MySQL",
                                            style: GoogleFonts.overpass(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
