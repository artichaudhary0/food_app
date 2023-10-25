import 'package:flutter/material.dart';
import 'package:food_app/widgets/small_text.dart';

class IconWithText extends StatelessWidget {
  IconData iconData;
  final String text;
  Color iconColor;
  IconWithText(
      {Key? key,
      required this.text,
      required this.iconData,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: iconColor,
        ),
        const SizedBox(width: 5),
        SmallText(text: text),
      ],
    );
  }
}
