// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  final iconPath;
  final iconColor;

  const IconsWidget({Key? key, required this.iconPath,required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28,
      height: 28,
      child: Center(
        child: Image.asset(
          iconPath,
          color: iconColor,
        ),
      ),
    );
  }
}
