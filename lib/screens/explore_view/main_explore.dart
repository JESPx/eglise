import 'package:bethanie/screens/explore_view/display_videos.dart';
import 'package:bethanie/screens/explore_view/shorts.dart';
import 'package:bethanie/screens/explore_view/show_videos.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/widgets/cards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainExplore extends StatefulWidget {
  const MainExplore({super.key});

  @override
  State<MainExplore> createState() => _MainExploreState();
}

class _MainExploreState extends State<MainExplore> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  final List<String> _imageList = [
    'baner1.jpeg',
    'video_image.jpeg',
    'book.jpg',
    'church.jpg',
    'brazza.jpg',
    'congo.png',
    'globe.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: myAppbar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              CarouselSlider(
                items: _imageList.map((image) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/$image'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  disableCenter: true,
                  autoPlay: true,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  initialPage: _currentIndex,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              Container(
                padding: padding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(),
                ),
              ),
            ],
          ),
          lineBar,
          GestureDetector(
            onTap: () => Get.to(const ShowVideosView("Top Videos"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
            child: textLineHome("Top Videos"),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
                if (index == 5) {
                  return GestureDetector(
                    onTap: () => Get.to(const ShowVideosView("Top Videos"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
                    child: cardViewMoreVideo(context),
                  );
                } else {
                  return GestureDetector(
                    onTap: () => Get.to(const DisplayVideo(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: smallCardVideo(context),
                  );
                }
              },
            ),
          ),

          lineBar,
          GestureDetector(
            onTap: () => Get.to(const ShowVideosView("Cette Semaine"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
            child: textLineHome("Cette Semaine"),
          ),
         Container(
            padding: const EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
                if (index == 5) {
                  return GestureDetector(
                    onTap: () => Get.to(const ShowVideosView("Cette Semaine"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
                    child: cardViewMoreVideo(context),
                  );
                } else {
                  return GestureDetector(
                    onTap: () => Get.to(const DisplayVideo(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: smallCardVideo(context),
                  );
                }
              },
            ),
          ),

          lineBar,
          GestureDetector(
            onTap: () => Get.to(const ShortsVideosView(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
            child: textLineHome("Shorts"),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
                if (index == 5) {
                  return GestureDetector(
                    onTap: () => Get.to(const ShortsVideosView(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: cardViewMoreVideo(context),
                  );
                } else {
                  return GestureDetector(
                    onTap: () => Get.to(const ShortsVideosView(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: smallCardVideo(context),
                  );
                }
              },
            ),
          ),

          lineBar,
          GestureDetector(
            onTap: () => Get.to(const ShowVideosView("Témoignage"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
            child: textLineHome("Témoignage"),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
                if (index == 5) {
                  return GestureDetector(
                    onTap: () => Get.to(const ShowVideosView("Témoignage"), transition: Transition.rightToLeft, duration: const Duration(milliseconds: timeAnimation)),
                    child: cardViewMoreVideo(context),
                  );
                } else {
                  return GestureDetector(
                    onTap: () => Get.to(const DisplayVideo(), transition: Transition.downToUp, duration: const Duration(milliseconds: timeAnimation)),
                    child: smallCardVideo(context),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
   List<Widget> _buildIndicator() {
    return _imageList.map((image) {
      int index = _imageList.indexOf(image);
      return Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == index ? white : Colors.grey,
        ),
      );
    }).toList();
  }
}