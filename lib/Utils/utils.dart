import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double size, [Color? color, FontWeight? fontWeight]) {
  return GoogleFonts.oswald(
      fontSize: size, color: color, fontWeight: fontWeight);
}

List selectedTimes = [
  "300",
  "600",
  "900",
  "1200",
  "1500",
  "1800",
  "2100",
  "2400",
  "2700",
  "3000",
  "3300",
];
