import 'package:bethanie/theme/theme.dart';
import 'package:flutter/material.dart';

class MainDonate extends StatefulWidget {
  const MainDonate({super.key});

  @override
  State<MainDonate> createState() => _MainDonateState();
}

class _MainDonateState extends State<MainDonate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customeTextStyle("Interface de don"),
    );
  }
}