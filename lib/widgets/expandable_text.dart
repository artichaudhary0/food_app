import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;

  double textHeight = Dimension.screenHeight / 5.63;

  @override
  void initState() {
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text.toString();
      secondHalf = "";
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              size: Dimension.font18,
              color: AppColors.paraColor,
              height: 1.4,
            )
          : Column(
              children: [
                SmallText(
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                  size: Dimension.font18,
                  color: AppColors.paraColor,
                  height: 1.4,
                ),
            
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        hiddenText = !hiddenText;
                      },
                    );
                  },
                  child: hiddenText
                      ? Row(
                          children: [
                            SmallText(
                              text: "Show more",
                              color: AppColors.mainColor,
                              size: Dimension.font18,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: Dimension.icon24,
                              color: AppColors.mainColor,
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            SmallText(
                              text: "Show less",
                              color: AppColors.mainColor,
                              size: Dimension.font18,
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              size: Dimension.icon24,
                              color: AppColors.mainColor,
                            ),
                          ],
                        ),
                )
              ],
            ),
    );
  }
}
