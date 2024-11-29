import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';
import 'package:portofolio/database/dummy_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
    required this.sectionProject,
  });

  final double sizeHeight;
  final double sizeWidth;
  final GlobalKey<State<StatefulWidget>> sectionProject;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return ShowProjectDesktop(sectionProject: sectionProject, sizeHeight: sizeHeight, sizeWidth: sizeWidth);
        } else if (sizingInformation.isMobile) {
          return ShowProjectMobile(
              sizeHeight: sizeHeight, sizeWidth: sizeWidth);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class ShowProjectDesktop extends StatelessWidget {
  const ShowProjectDesktop({
    super.key,
    required this.sectionProject,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final GlobalKey<State<StatefulWidget>> sectionProject;
  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionProject,
      color: primaryCOlor,
      height: sizeHeight,
      width: sizeWidth,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: sizeHeight,
                width: sizeWidth * 0.4,
                color: const Color.fromARGB(255, 27, 31, 75),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(
                      children: [
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
                      ],
                    )),
                    const SizedBox(height: 20),
                    Text(
                      "Check out my latest projects, showcasing my skills in front-end development, back-end solutions, and UI design. Each project reflects my commitment to creating functional, user-friendly, and visually appealing digital experiences.",
                      style: GoogleFonts.overpass(
                          fontSize: 22,
                          color: Colors.white70,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              ListOfProjectDesktop(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
            ],
          ),
        ],
      ),
    );
  }
}

class ListOfProjectDesktop extends StatelessWidget {
  const ListOfProjectDesktop({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      width: sizeWidth * 0.5,
      height: sizeHeight * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 27, 31, 75),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final dataList = data[index];
          final image = dataList['image'] ?? '';
          final title = dataList['title'] ?? 'Unknown Title';
          final tech = dataList['tech'] ?? 'Unknown Tech';
        
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 500,
              height: sizeHeight * 0.5, // Adjust child height
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 500,
                      height: sizeHeight,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 30),
                        width: sizeWidth * 0.9, // Adjust width
                        height: 150,
                        color: Colors.black54,
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.overpass(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "Tech Stack: $tech",
                              style: GoogleFonts.overpass(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ShowProjectMobile extends StatelessWidget {
  const ShowProjectMobile({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: sizeHeight,
      width: sizeWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "My Projects",
            style: GoogleFonts.overpass(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            "Check out my latest projects, showcasing my skills in front-end development, back-end solutions, and UI design. Each project reflects my commitment to creating functional, user-friendly, and visually appealing digital experiences.",
            style: GoogleFonts.overpass(
                fontSize: 14,
                color: Colors.white70,
                fontWeight: FontWeight.w500),
          ),
          ListofProjectMobile(sizeHeight: sizeHeight, sizeWidth: sizeWidth)
        ],
      ),
    );
  }
}

class ListofProjectMobile extends StatelessWidget {
  const ListofProjectMobile({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      height: sizeHeight * 0.55,
      width: sizeWidth,
      child: CarouselSlider.builder(
        itemCount: data.length,
        options: CarouselOptions(
          height: sizeHeight * 0.5,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          viewportFraction: 0.8,
        ),
        itemBuilder: (context, index, realIndex) {
          final dataList = data[index];
          final image = dataList['image'] ?? '';
          final title = dataList['title'] ?? 'Unknown Title';
          final tech = dataList['tech'] ?? 'Unknown Tech';
    
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: sizeHeight * 0.5,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 30),
                      width: sizeWidth,
                      height: 70,
                      color: Colors.black54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.overpass(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Tech Stack: $tech",
                            style: GoogleFonts.overpass(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
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
        },
      ),
    );
  }
}
