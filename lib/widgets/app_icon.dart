import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';

class AppIcon extends StatelessWidget {
  IconData iconData;
  Color backgroundColor;
  Color iconColor;
  double size;

  AppIcon({
    Key? key,
    this.iconColor = const Color(0xff756d54),
    this.backgroundColor = const Color(0xfffcf4e4),
    required this.iconData,
    this.size = 45,
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
        size: Dimension.appIconSize,
      ),
    );
  }
}
