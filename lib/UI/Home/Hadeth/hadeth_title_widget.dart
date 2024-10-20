import 'package:flutter/material.dart';
import 'package:islamii/UI/Hadeth_Details/hadeth_details_screen.dart';
import 'package:islamii/UI/Home/Hadeth/hadeth.dart';


class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetailesScreen.routeName, arguments: hadeth);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
