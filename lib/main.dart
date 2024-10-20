

import 'package:flutter/material.dart';
import 'package:islamii/Style/my_theme_data.dart';
import 'package:islamii/UI/Chapter_Details/chapter_details_screen.dart';
import 'package:islamii/UI/Hadeth_Details/hadeth_details_screen.dart';
import 'package:islamii/UI/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailesScreen.routeName: (_) => ChapterDetailesScreen(),
        HadethDetailesScreen.routeName: (_) => HadethDetailesScreen(),
      },
    );
  }
}
