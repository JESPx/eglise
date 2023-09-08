import 'package:bethanie/screens/churches_view/church_list.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/appbar.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainChurch extends StatefulWidget {
  const MainChurch({super.key});

  @override
  State<MainChurch> createState() => _MainChurchState();
}

class _MainChurchState extends State<MainChurch> {
  List<String> countries = [
    'Congo',
    'Cameroon',
    'Benin',
    'Republique Démocratique du Congo',
    'France',
    'Belgique',
    'Canada',
    'Ile de France',
    'Sénégale'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: myAppbar(),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/globe.jpg"), fit: BoxFit.cover)
            ),
          ),
          for(var country in countries )
            GestureDetector(
              onTap: () => Get.to(() => const ChurchList(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
              child: cardCountryChurch(context, country),
            )
        ]
      )
    );
  }
}