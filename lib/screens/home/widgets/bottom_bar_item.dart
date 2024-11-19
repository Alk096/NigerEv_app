import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/my_theme.dart';

class BottomBarItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected;
  final Function onTap;

  const BottomBarItem(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
                image: AssetImage(imagePath),
                color: (isSelected) ? MyTheme.secondayColor : MyTheme.grey),
            Text(
              title,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: (isSelected) ? MyTheme.secondayColor : MyTheme.grey),
            ),
          ],
        ),
      ),
    );
  }
}
