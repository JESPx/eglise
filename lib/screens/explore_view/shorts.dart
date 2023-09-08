import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ShortsVideosView extends StatefulWidget {
  const ShortsVideosView({super.key});

  @override
  State<ShortsVideosView> createState() => _ShortsVideosViewState();
}

class _ShortsVideosViewState extends State<ShortsVideosView> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    List<Widget> reel = List.generate(200, (index) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: grey,
        child: Stack(children: [
          Center(child: customeTextStyle("Affichage de la Video $index"),),
          Positioned(
            top: 90,
            right: 0,
            child: IconButton(
              onPressed: () {
                cardBottomDialog(context);
              },
              icon: myIcon(EvaIcons.moreVerticalOutline),
            ),
          )
        ],)
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [customeTextStyle("Shorts Vidéo", size: 18, fontWeight: FontWeight.bold)],),
      ),
      body: SizedBox(
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: reel,
        ),
      )
    );
  }
}