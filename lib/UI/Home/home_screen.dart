
import 'package:flutter/material.dart';
import 'package:islamii/Style/my_theme_data.dart';
import 'package:islamii/UI/Home/Hadeth/hadeth_tab.dart';
import 'package:islamii/UI/Home/Quaran/quaran_tab.dart';
import 'package:islamii/UI/Home/Radio/radio_tab.dart';
import 'package:islamii/UI/Home/Settings/settings_tab.dart';
import 'package:islamii/UI/Home/Tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(MyThemeData.isDarkEnabled
                    ? 'assets/images/main_background_dark.png'
                    : 'assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            currentIndex: selectedTabIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quaran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.settings),
                  label: 'Settings'),
            ],
          ),
          body: tabs[selectedTabIndex],
        ));
  }

  List<Widget> tabs = [
    QuaranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    const SettingsTab(),
  ];
}
