import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProjects extends StatelessWidget {
  const DetailProjects({super.key, required this.title, required this.titleProject});

  final String title;
  final String titleProject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: contentChoose(title, context, titleProject),
      ),
    );
  }
}

Widget contentChoose(String title, BuildContext context, titleProject) {
  if (title == 'Students') {
    return  Hero(
      tag: titleProject,
      child: const ContentChooseCard(
          title: 'Students Attendance',
          image1: 'assets/sa1.png',
          image2: 'assets/sa2.png',
          image3: 'assets/sa3.png',
          image4: 'assets/sa4.png'),
    );
  } else if (title == 'AlQuran') {
    return  Hero(
      tag: titleProject,
      child: const ContentChooseCard(
          title: "Al-Quran",
          image1: 'assets/alquran1.png',
          image2: 'assets/alquran2.png',
          image3: 'assets/alquran3.png',
          image4: ''),
    );
  } else if (title == 'Money') {
    return  Hero(
      tag: titleProject,
      child: const ContentChooseCard(
          title: "Money Tracker",
          image1: 'assets/mt1.png',
          image2: 'assets/mt2.png',
          image3: 'assets/mt3.png',
          image4: 'assets/mt4.png'),
    );
  } else {
    return const Text("Content Not Found");
  }
}

// ignore: must_be_immutable
class ContentChooseCard extends StatelessWidget {
  const ContentChooseCard({
    super.key,
    required this.title,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  });

  final String title;
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The Content of $title",
            style: GoogleFonts.overpassMono(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  const Shadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(-3, 3))
                ]),
          ),
          const SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image1,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Image.asset(image2, fit: BoxFit.fitHeight),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Image.asset(image3, fit: BoxFit.fitHeight),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: image4.isNotEmpty
                      ? Image.asset(image4, fit: BoxFit.fitHeight)
                      : const SizedBox(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
