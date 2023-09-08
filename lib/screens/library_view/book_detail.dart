import 'package:bethanie/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  final String imgUrl;
  const BookDetailView(this.imgUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
        title: customeTextStyle("Le Voyage du Pélérin", size: headingText),
      ),
      body: Center(child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(5, (index) => myIcon(EvaIcons.star, color: rating)),
            ),
          ),
          Container(
            margin: margin,
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: left,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customeTextStyle("16YRS+", color: grey),
                        customeTextStyle("Le Voyage du Pélérin : 4e édition", size: headingText),
                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Auteur : "),
                              customeTextStyle("John Bunyan", color: rating)
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Editeur : "),
                              customeTextStyle("CLC France", color: rating),
                            ],
                          ),
                        ),

                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Date de parution : "),
                              Expanded(
                                child: customeTextStyle("Jan, 1982", color: rating)),
                            ],
                          ),
                        ),

                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("ISBN : "),
                              customeTextStyle("2722200201", color: rating),
                            ],
                          ),
                        ),

                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Nombre de pages : "),
                              customeTextStyle("247", color: rating),
                            ],
                          ),
                        ),
                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Langue : "),
                              customeTextStyle("Français", color: rating),
                            ],
                          ),
                        ),
                        Padding(
                          padding: spaceHeigthText,
                          child: Row(children: [
                              customeTextStyle("Format : "),
                              customeTextStyle("pdf", color: rating),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: padding,
            child: OutlinedButton(
              onPressed: () => "",
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: BorderSide(color: rating, width: 3),
                minimumSize: const Size(0, 60)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                myIcon(EvaIcons.downloadOutline),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: customeTextStyle("Télécharger"),
                )
              ],),
            ),
          ),
          Container(
            margin: margin,
            child: customeTextStyle("RÉSUMÉ",size: headingText),
          ),
          Container(
            margin: margin,
            child: customeTextStyle("Best seller ", color: rating),
          ),
          Container(
            margin: margin,
            child: customeTextStyle("Un grand classique. Une allégorie du cheminement du chrétien. John Bunyan est un homme de Dieu remarquable par sa vie, ses actes et ses écrits. Traduit dans plus de 120 langues, Le voyage du pélerin s'inscrit dans la catégorie des Best-Sellers et est son ouvrage le plus connu. Au travers d'une allégorie venant du Ciel, John Bunyan retrace dans un livre rempli de péripéties, la vie, les tentations, les épreuves que connaît tout chrétien en apportant des solutions. Ce livre tellement proche de la vie de chaque chrétien l'aidera à mieux comprendre le but de la vie chrétienne et les épreuves et questions qui y sont rattachées. Dans un style simple et limpide et très compréhensible, ce livre édifiera, exhortera, encouragera, et guidera chaque chrétien. Plus qu'un livre, le voyage du pélerin est un chef d'oeuvre à lire, relire, approfondir et méditer.",
              align: TextAlign.justify
            ),
          ),

        ],
      ),),
    );
  }
}