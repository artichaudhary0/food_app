import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppIcon extends StatelessWidget {
  IconData iconData;
  Color backgroundColor;
  Color iconColor;
  double size;
  double iconSize;

  AppIcon({
    Key? key,
    this.iconColor = const Color(0xff756d54),
    this.backgroundColor = const Color(0xfffcf4e4),
    required this.iconData,
    this.size = 45,
    this.iconSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          size / 2,
        ),
        color: backgroundColor,
      ),
      child: Icon(
        iconData,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
