import 'package:flutter/material.dart';
import 'package:islamii/UI/Home/Settings/language_buttom_sheet.dart';
import 'package:islamii/UI/Home/Settings/theme_buttom_sheet.dart';


class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Theme'),
        InkWell(
          onTap: () {
            showThemeBottomSheet();
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                )),
            child:
                Text('Light', style: Theme.of(context).textTheme.titleMedium),
          ),
        ),
        const Column(
          children: [
            Text(
              'Language',
            ),
          ],
        ),
        InkWell(
          onTap: () {
            showLanguageBottomSheet();
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 1,
                )),
            child:
                Text('English', style: Theme.of(context).textTheme.titleMedium),
          ),
        ),
      ]),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ThemeButtomSheet();
      },
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const LanguageButtomSheet();
      },
    );
  }
}
