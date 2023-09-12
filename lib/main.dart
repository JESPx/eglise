import 'package:bethanie/screens/churches_view/church_detail.dart';
import 'package:bethanie/screens/churches_view/church_list.dart';
import 'package:bethanie/screens/main_screen.dart';
import 'package:bethanie/theme/theme.dart';
import 'package:bethanie/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';


void main() {
  Get.testMode = true;
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  MaterialApp.router(
      title: 'Bethanie',
      routerConfig: _router,
      theme: ThemeData(
        scaffoldBackgroundColor: black,
        primaryColor: primaryColor
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MainScreen(), 
      routes: [
        GoRoute(path: 'church-list', builder: (context, state) => const ChurchList(),
        routes: [
          GoRoute(path: 'details', builder: (context, state) => const ChurchDetails()),
          ]
        ),
      ]),
    ]
  );
}