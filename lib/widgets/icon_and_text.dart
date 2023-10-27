import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/small_text.dart';

// ignore: must_be_immutable
class IconWithText extends StatelessWidget {
  IconData iconData;
  String text;
  Color iconColor;
  IconWithText({
    Key? key,
    required this.text,
    required this.iconData,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: iconColor,
          size: Dimension.icon24,
        ),
        SizedBox(width: Dimension.width5),
        SmallText(text: text),
      ],
    );
  }
}
