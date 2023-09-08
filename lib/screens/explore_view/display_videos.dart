import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DisplayVideo extends StatefulWidget {
  const DisplayVideo({super.key});

  @override
  State<DisplayVideo> createState() => _DisplayVideoState();
}

class _DisplayVideoState extends State<DisplayVideo> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: grey,
          ),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  child: PageView(
                    controller: controller,
                    children: [
                      SizedBox(
                        child: ListView(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: left,
                                  child: customeTextStyle("Un Nouveau Départ", size: 20, fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  onPressed: () => cardBottomDialog(context),
                                  icon: myIcon(EvaIcons.moreVerticalOutline),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 15),
                              child: customeTextStyle("1h:45m", color: grey),
                            ),
                            Padding(
                              padding: padding,
                              child: customeTextStyle("Le lorem ipsum (également appelé faux-texte, lipsum, ou bolo bolo1) est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée.",
                                align: TextAlign.start, size: 15
                              ),
                            ),
                            Divider(height: 1, color: secondaryColor, thickness: 1,),
                            Padding(
                              padding: padding,
                              child: customeTextStyle("Prochaine Vidéos", size: 18),
                            ),

                            for(var i = 0; i < 7; i++)
                              Padding(
                                padding: padding,
                                child: cardVideo2(context),
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: padding,
                              child: customeTextStyle("COMMENTAIRES", size: 20, fontWeight: FontWeight.bold),
                            ),
                            Divider(height: 1, color: secondaryColor, thickness: 1,),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                
                                child: ListView(
                                  children: [
                                    Center(child: customeTextStyle("Aucun commentaires"),)
                                  ],
                                ),
                              ),
                            ),
                            Divider(height: 1, color: secondaryColor, thickness: 1,),
                            Expanded(
                              child: Container(
                                
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    //color: grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              controller = PageController(initialPage: 0);
                            });
                          },
                          icon: myIcon(EvaIcons.tvOutline),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              controller = PageController(initialPage: 1);
                            });
                          },
                          icon: myIcon(EvaIcons.messageSquareOutline),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}