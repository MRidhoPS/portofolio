import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/config/colors.dart';
import 'package:portofolio/database/dummy_data.dart';

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
              Container(
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
                                '$image',
                                fit: BoxFit.cover,
                                width: 500,
                                height: sizeHeight,
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 30),
                                  width: sizeWidth * 0.9, // Adjust width
                                  height: 150,
                                  color: Colors.black54,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$title',
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
