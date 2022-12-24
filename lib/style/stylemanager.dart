import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color kbgcolor = const Color(0xffe2e2ff);
  static Color kmaincolor = const Color(0xff000633);
  static Color kaccentcolor = const Color(0xff0065ff);

  //setting the card colors

  static List<Color> cardColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade200,
    Colors.orange.shade200,
    Colors.yellow.shade200,
    Colors.green.shade200,
    Colors.blue.shade200,
    Colors.blueGrey.shade200,
  ];

  //text style

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle maincontent =
      GoogleFonts.asap(fontSize: 16, fontWeight: FontWeight.normal);

  static TextStyle dateTitle =
      GoogleFonts.asap(fontSize: 13, fontWeight: FontWeight.w500);
}
