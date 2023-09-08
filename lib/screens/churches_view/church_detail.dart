import 'package:bethanie/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ChurchDetails extends StatefulWidget {
  const ChurchDetails({super.key});

  @override
  State<ChurchDetails> createState() => _ChurchDetailsState();
}

class _ChurchDetailsState extends State<ChurchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/congo.png"), fit: BoxFit.cover)
                ),
              ),
              Container(
                margin: top,
                child: IconButton(
                  onPressed: () {Navigator.pop(context);},
                  icon: myIcon(EvaIcons.arrowBackOutline),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
                height: MediaQuery.of(context).size.height * 0.28,
                decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("images/brazza.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: customeTextStyle("BRAZZAVILLE", fontWeight: FontWeight.bold, size: 30),
                ),
              )
            ],
          ),
          Container(
            margin: margin,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customeTextStyle("BRAZZAVILLE", fontWeight: FontWeight.bold, size: headingText),
                Padding(
                  padding: top,
                  child: customeTextStyle("Église Bethanie Brazzavile", fontWeight: FontWeight.bold, size: 15),
                ),
                Padding(
                  padding: top,
                  child: customeTextStyle("Adresse : 49 - 53 RUE LOUFOULAKARIE, Brazzaville", color: grey, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: spaceHeigthText,
                  child: customeTextStyle("Pasteur principal : Bishop Serge Aimé DZABATOU ECKO", color: grey, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: spaceHeigthText,
                  child: customeTextStyle("Email : cebethanie@gmail.com", color: grey, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: spaceHeigthText,
                  child: customeTextStyle("Téléphone: 06 521 4747", color: grey, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ]
      )
    );
  }
}