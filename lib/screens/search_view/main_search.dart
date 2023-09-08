import 'package:bethanie/screens/explore_view/display_videos.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainSearch extends StatefulWidget {
  const MainSearch({super.key});

  @override
  State<MainSearch> createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  //final GlobalKey<FormBuilderState> _searchFormKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 0),
          height: 40,
          child: TextField(
            cursorColor: white,
            cursorHeight: 20,
            style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 17, color: white)),
            onChanged: (value) => "",
            decoration: InputDecoration(
              filled: true,
              focusColor: white,
              fillColor: Colors.black38,
              suffixIcon: myIcon(EvaIcons.searchOutline, color: white),
              contentPadding: left,
              border: const OutlineInputBorder(borderSide: BorderSide.none,),
              hintStyle: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 17, color: white)),
              hintText: "Recherche"
            ),
          ),
        ),
      ),
      body: ListView(
        children: List.generate(200, (index) => GestureDetector(
          onTap: (){Get.to(const DisplayVideo(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation));},
          child: cardItemSearch(context)),)
      )
    );
  }
}