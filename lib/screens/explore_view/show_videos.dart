import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/appbar.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'display_videos.dart';

// ignore: must_be_immutable
class ShowVideosView extends StatelessWidget {
     final String title;
    const ShowVideosView(this.title, {super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: mySimpleAppBar(title),
      body: ListView(
        children: List.generate(5, (index) => GestureDetector(
          onTap: (){Get.to(const DisplayVideo(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation));},
          child: cardItemSearch(context)),)
      ),
    );
  }
}