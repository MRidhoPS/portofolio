// import 'package:flutter/material.dart';

// class DesktopHome extends StatelessWidget {
//   const DesktopHome({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: 3,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               children: [
//                 AspectRatio(
//                   aspectRatio: 16 / 9,
//                   child: Container(
//                     color: Colors.amber,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   width: double
//                       .infinity, // Ensures the ListView fills the width of the Column
//                   height:
//                       350, // Sets the height of the SizedBox containing the ListView
//                   child: ListView.builder(
//                     // physics: const NeverScrollableScrollPhysics(),
//                     scrollDirection:
//                         Axis.vertical, // Allows horizontal scrolling
//                     itemCount: 10,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         height:
//                             70, // Set width for each item to ensure proper display
//                         margin: const EdgeInsets.symmetric(
//                             vertical: 5,
//                             horizontal: 10), // Adds spacing between items
//                         color: Colors.blue,
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           // flex: 2,
//           child: Container(
//             height: MediaQuery.of(context)
//                 .size
//                 .height, // Ensures full height for the container
//             color: Colors.purple,
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portofolio/config/controller_page.dart';
import 'package:portofolio/widgets/project.dart';

import '../widgets/about_me.dart';
import '../widgets/heading.dart';
import '../widgets/home.dart';

// class DesktopHome extends StatelessWidget {
//   const DesktopHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeWidth = MediaQuery.of(context).size.width;
//     final sizeHeight = MediaQuery.of(context).size.height;
//     final sectionHome = GlobalKey();
//     final sectionAbout = GlobalKey();
//     final sectionProject = GlobalKey();

//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             HeadingWidget(sizeWidth: sizeWidth, sectionHome: sectionHome, sectionAbout: sectionAbout, sectionProject: sectionProject),
//             Home(sizeWidth: sizeWidth, sizeHeight: sizeHeight,sectionHome: sectionHome,),
//             const SizedBox(
//               height: 50,
//             ),
//             AboutMe(sizeHeight: sizeHeight, sizeWidth: sizeWidth, sectionAbout: sectionAbout,),
//             Project(sizeHeight: sizeHeight, sizeWidth: sizeWidth, sectionProject: sectionProject,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

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
            // HeadingWidget(
            //   sizeWidth: sizeWidth,
            //   sectionHome: sectionHome,
            //   sectionAbout: sectionAbout,
            //   sectionProject: sectionProject,
            // ),
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
