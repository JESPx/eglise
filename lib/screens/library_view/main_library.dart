import 'package:bethanie/screens/library_view/book_detail.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLibrary extends StatefulWidget {
  const MainLibrary({super.key});

  @override
  State<MainLibrary> createState() => _MainLibraryState();
}

class _MainLibraryState extends State<MainLibrary> {
  final ScrollController _scrollController = ScrollController();
  final int _itemCount = 21;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
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
              hintText: "Livre, Auteur, Catégorie"
            ),
          ),
        ),
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        shrinkWrap: true,
        children: [
          Container(margin: margin, child: customeTextStyle("Nouveauté", size: headingText)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: _itemCount,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: left,
                  child: GestureDetector(
                    onTap: () => Get.to(const BookDetailView("images/book1.jpeg"), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: cardBook(context, "images/book1.jpeg"),
                  )
                );
              },
            ),
          ),
          
          Container(margin: left,child: customeTextStyle("Livre Disponible", size: headingText)),
          
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Wrap(
              spacing: 5,
              clipBehavior: Clip.antiAlias,
              children: List.generate(200, (index) => GestureDetector(
                onTap: () => Get.to(const BookDetailView("images/book2.jpeg"), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: cardBook(context, "images/book2.jpeg"),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}