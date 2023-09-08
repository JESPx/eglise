import 'package:bethanie/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

AppBar myAppbar(){
  return AppBar(
    title: Row(
      children: [
        customeTextStyle("CE", color: primaryColor, size: 18),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: customeTextStyle("Béthanie", size: 18),
        )
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: myIcon(EvaIcons.musicOutline),
      ),
      IconButton(
        onPressed: () {},
        icon: myIcon(EvaIcons.personOutline),
      )
    ],
    backgroundColor: secondaryColor,
  );
}

AppBar mySimpleAppBar(String title){
  return AppBar(
    title: customeTextStyle(title, size: 18),
    backgroundColor: secondaryColor,
  );
}