import 'package:flutter/material.dart';
import 'package:islamii/Style/my_theme_data.dart';
import 'package:islamii/UI/Home/Hadeth/hadeth.dart';

class HadethDetailesScreen extends StatelessWidget {
  static const String routeName = 'hadeth';

  const HadethDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                child: Text(args.content,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ],
          ),
        ));
  }
}
