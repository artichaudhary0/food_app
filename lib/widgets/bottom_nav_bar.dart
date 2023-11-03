import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/big_text.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimension.bottomHeightBar,
        padding: EdgeInsets.only(
          left: Dimension.width20,
          top: Dimension.height10,
          right: Dimension.width20,
          bottom: Dimension.height10,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              Dimension.radius20 * 2,
            ),
            topRight: Radius.circular(
              Dimension.radius20 * 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                top: Dimension.height20,
                right: Dimension.width20,
                bottom: Dimension.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimension.radius20,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimension.width5),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.width5),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                top: Dimension.height20,
                right: Dimension.width20,
                bottom: Dimension.height20,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(
                  Dimension.radius20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(
                    text: "\$10.0B | Add to cart",
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}