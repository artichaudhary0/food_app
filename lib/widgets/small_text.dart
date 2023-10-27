import 'package:flutter/widgets.dart';
import 'package:food_app/utils/dimension.dart';

class SmallText extends StatelessWidget {
  Color? color;
  TextOverflow? overflow;
  final String text;
  double size;
  double height;
  SmallText({
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color(0xFFccc7c5),
    this.size = 0,
    this.height = 1.2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimension.font12 : size,
        fontFamily: "Roboto",
        height: height,
      ),
    );
  }
}
