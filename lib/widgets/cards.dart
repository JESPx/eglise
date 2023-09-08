import 'package:bethanie/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/material_dialogs.dart';

SizedBox cardBook(BuildContext context, String imgUrl){
  return SizedBox(
    //margin: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover)
          ),
        ),
        customeTextStyle("The Blessing...", size: 12),
        customeTextStyle("John Bunyan", color: grey, size: 11),
        customeTextStyle("CLC France", size: 11, color: Colors.amber)
      ],
    ),
  );
}

Container cardItemSearch(BuildContext context){
  return Container(
    //color: secondaryColor,
    margin: const EdgeInsets.only(top: 1),
    padding: padding,
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              //color: grey,
              image: const DecorationImage(image: AssetImage("images/video_image.jpeg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black38,
                    ),
                    child: customeTextStyle("1:45:20")
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: top,
            child: customeTextStyle("Un Nouveau Départ", size: headingText, fontWeight: FontWeight.bold),
          ),
          customeTextStyle("7 juin 2015", color: grey)
        ],
      ),
    )
  );
}

Container cardCountryChurch(BuildContext context, String contry){
  return Container(
      margin: const EdgeInsets.only(top: 1),
      padding: padding,
      color: black,
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05     ,
            width: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              image: const DecorationImage(image: AssetImage("images/congo.png"), fit: BoxFit.cover)
            ),
          ),
          Expanded(
            child: Padding(
              padding: left,
              child: customeTextStyle(contry.toUpperCase(), size: headingText, color: white),
            ),
          )
        ],
      ),
    );
}

Container cardChurch(BuildContext context, String contry){
  return Container(
      margin: const EdgeInsets.only(top: 1),
      color: black,
      padding: padding,
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06     ,
            width: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(image: AssetImage("images/church.jpg"), fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: left,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customeTextStyle(contry.toUpperCase(), size: headingText, color: white, fontWeight: FontWeight.bold),
                customeTextStyle("Eglise Bethanie $contry", color: grey, fontWeight: FontWeight.bold)
              ],
            ),
          )
        ],
      ),
    );
}


Container textLineHome(String title){
  return Container(
    margin: margin,
    child: Row(
      children: [
        customeTextStyle(title, size: headingText),
        myIcon(EvaIcons.arrowIosForward)
      ],
    ),
  );
}

Container smallCardVideo(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: left,
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(image: AssetImage("images/video_image.jpeg"), fit: BoxFit.cover)
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 2,
                right: 5,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black38,
                  ),
                  child: customeTextStyle("1:45:20")
                )
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child: customeTextStyle("Un Nouveau Départ", size: headingText),
        ),
        Padding(
          padding: left,
          child: customeTextStyle("04 Mars 2010", color: grey),
        )
      ],
    ),
  );
}


Container cardViewMoreVideo(BuildContext context){
  return Container(
    padding: const EdgeInsets.all(0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: left,
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: secondaryColor
            //image: const DecorationImage(image: AssetImage("images/video_image.jpeg"), fit: BoxFit.cover)
          ),
          child: Center(child: customeTextStyle("Tous voir"),)
        ),
      ],
    ),
  );
}

SizedBox cardVideo2(BuildContext context){
  return SizedBox(
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage("images/video_image2.jpeg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Stack(children: [
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black38,
                ),
                child: customeTextStyle("1:45:20")
              )
            ),
          ]),
        ),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: left,
                  child: customeTextStyle("Les Sécrets des Prières Exaucés.", size: headingText),
                ),
                Padding(
                  padding: left,
                  child: customeTextStyle("5 Janvier 2011", color: grey),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

SizedBox cardVideo3(BuildContext context){
  return SizedBox(
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage("images/video_image2.jpeg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Stack(children: [
            Positioned(
              bottom: 2,
              right: 2,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black38,
                ),
                child: customeTextStyle("1:45:20")
              )
            ),
          ]),
        ),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: left,
                  child: customeTextStyle("Les Sécrets des Prières Exaucés.", size: 15),
                ),
                Padding(
                  padding: left,
                  child: customeTextStyle("5 Janvier 2011", color: grey),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

cardBottomDialog(BuildContext context){
  return Dialogs.bottomMaterialDialog(
    color: black,
    context: context,
    actions: [
      Column(
        children: [
          Padding(
            padding: bottom,
            child: cardVideo3(context),
          ),
          const Divider(height: 1, color: grey, thickness: 0.5,),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  onPressed: () => "",
                  icon: myIcon(EvaIcons.shareOutline),
                ),
                customeTextStyle("Partager"),
              ],
            ),
          )
        ],
      )
    ]
  );
}