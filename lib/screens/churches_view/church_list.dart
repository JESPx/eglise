import 'package:bethanie/screens/churches_view/church_detail.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChurchList extends StatefulWidget {
  const ChurchList({super.key});

  @override
  State<ChurchList> createState() => _ChurchListState();
}

class _ChurchListState extends State<ChurchList> {
  List<String> countries = [
    'Brazzaville',
    'POINTE-NOIRE',
    'DOLISIE',
    'OUESSO'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/congo.png"), fit: BoxFit.cover)
                ),
                child: Center(
                  child: customeTextStyle("CONGO", fontWeight: FontWeight.bold, size: 30),
                ),
              ),
              Container(
                margin: top,
                child: IconButton(
                  onPressed: () {Navigator.pop(context);},
                  icon: myIcon(EvaIcons.arrowBackOutline),
                ),
              ),
            ],
          ),
          for(var country in countries )
            GestureDetector(
              onTap: () => Get.to(() => const ChurchDetails(), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
              child: cardChurch(context, country),
            )
        ]
      )
    );
  }
}