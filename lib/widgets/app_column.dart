import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/icon_and_text.dart';
import 'package:food_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        BigText(text: "Hyadrabadi Biryani"),
        SizedBox(height: Dimension.height5),
        Row(
          children: <Widget>[
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimension.height15,
                );
              }),
            ),
            SizedBox(width: Dimension.width10),
            SmallText(text: "4.5"),
            SizedBox(width: Dimension.width10),
            SmallText(text: "1278"),
            SizedBox(width: Dimension.width10),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimension.height15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconWithText(
              text: 'Normal',
              iconData: Icons.circle,
              iconColor: AppColors.iconColor1,
            ),
            IconWithText(
              text: '1.7 km',
              iconData: Icons.location_on_outlined,
              iconColor: AppColors.mainColor,
            ),
            IconWithText(
              text: '32 min',
              iconData: Icons.timer,
              iconColor: AppColors.iconColor2,
            ),
          ],
        )
      ],
    );
  }
}
