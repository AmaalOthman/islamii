import 'package:flutter/material.dart';
import 'package:islamii/UI/Chapter_Details/chapter_details_screen.dart';

// ignore: must_be_immutable
class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;

  ChapterTitleWidget(this.title, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ChapterDetailesScreen.routeName,
            arguments: ChapterDetailesArg(title, index));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
