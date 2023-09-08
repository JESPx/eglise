import 'package:bethanie/screens/churches_view/main_church.dart';
import 'package:bethanie/screens/donate_views/main_donate.dart';
import 'package:bethanie/screens/explore_view/main_explore.dart';
import 'package:bethanie/screens/library_view/main_library.dart';
import 'package:bethanie/screens/search_view/main_search.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int _currentIndex = 0;
  
  static const List<Widget> _widgetOptions =  <Widget>[
      MainExplore(),
      MainSearch(),
      MainDonate(),
      MainLibrary(),
      MainChurch()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: secondaryColor,
        currentIndex: _currentIndex,
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: grey,
        selectedItemColor: primaryColor,
        unselectedFontSize: 13,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: myIcon(EvaIcons.tv, color: grey),
            activeIcon: myIcon(EvaIcons.tv, color: primaryColor),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: myIcon(EvaIcons.searchOutline, color: grey),
            activeIcon: myIcon(EvaIcons.search, color: primaryColor),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: myIcon(EvaIcons.creditCardOutline, color: grey),
            activeIcon: myIcon(EvaIcons.creditCard, color: primaryColor),
            label: 'Don',
          ),
         BottomNavigationBarItem(
            icon: myIcon(EvaIcons.bookOutline, color: grey),
            activeIcon: myIcon(EvaIcons.book, color: primaryColor),
            label: 'Bibliothèque',
          ),
          BottomNavigationBarItem(
            icon: myIcon(EvaIcons.globe2Outline, color: grey),
            activeIcon: myIcon(EvaIcons.globe2, color: primaryColor),
            label: 'Nos Églises',
          ),
        ],
      ),
    );
  }
}