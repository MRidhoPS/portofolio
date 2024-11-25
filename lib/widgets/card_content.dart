import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
    required this.title,
    required this.desc,
  });

  final double sizeHeight;
  final double sizeWidth;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: sizeHeight * 0.5,
      width: sizeWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black45, borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.computer,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: GoogleFonts.overpass(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
                shadows: [
                  const Shadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(-3, 3))
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            desc,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.overpass(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
