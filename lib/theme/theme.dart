import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double headingText = 17;
const int timeAnimation = 250;

Divider lineBar = const Divider(height: 0.5, color: white, thickness: 0.5,);

const white = Colors.white;
const black = Colors.black;
const grey = Colors.grey;
Color primaryColor = Colors.red;
Color secondaryColor = Colors.grey.shade900;
Color rating = Colors.amber;

// padding and margin
const padding = EdgeInsets.symmetric(horizontal: 15, vertical: 15);
const margin = EdgeInsets.all(15);
const left = EdgeInsets.only(left: 15);
const rigth = EdgeInsets.only(right: 15);
const top= EdgeInsets.only(top: 15);
const bottom= EdgeInsets.only(bottom: 15);
const spaceHeigthText = EdgeInsets.only(top: 5);

Icon myIcon(IconData iconData, {color = white, double iconSize = 25}) {
  return Icon(
    iconData,
    size: iconSize,
    color: color,
  );
}

// Font app
Text customeTextStyle(String text,
  {FontWeight fontWeight = FontWeight.normal,
  double size = 14,
  double letterSpace = 0.5,
  Color color = white,
  TextAlign align = TextAlign.start}) {
  return Text(
    text,
    textAlign: align,
    style: GoogleFonts.roboto(
        color: color,
        fontSize: size,
        letterSpacing: letterSpace,
        fontWeight: fontWeight),
  );
}