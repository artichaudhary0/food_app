import 'package:flutter/widgets.dart';

class BigText extends StatelessWidget {
  Color? color;
  TextOverflow? overflow;
  final String text;
  double size;
  BigText({
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color(0xFF332d2b),
    this.size = 20,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
