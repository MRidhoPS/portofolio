import 'package:flutter/material.dart';
import 'package:portofolio/config/controller_page.dart';
import 'package:portofolio/widgets/project.dart';

import '../widgets/about_me.dart';
import '../widgets/heading.dart';
import '../widgets/home.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    final sectionHome = GlobalKey();
    final sectionAbout = GlobalKey();
    final sectionProject = GlobalKey();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Heading(
                sizeWidth: sizeWidth,
                sectionHome: sectionHome,
                sectionAbout: sectionAbout,
                sectionProject: sectionProject),
            Home(
              sizeWidth: sizeWidth,
              sizeHeight: sizeHeight,
            ),
            const SizedBox(height: 50),
            AboutMe(
              sizeHeight: sizeHeight,
              sizeWidth: sizeWidth,
              sectionAbout: sectionAbout,
            ),
            Project(
              sizeHeight: sizeHeight,
              sizeWidth: sizeWidth,
              sectionProject: sectionProject,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          ControllerPage().sectionFunction(sectionHome);
        },
        child: const Text(
          '🔝',
          style: TextStyle(fontSize: 26, color: Colors.black),
        ),
      ),
    );
  }
}
