import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/icon_and_text.dart';
import 'package:food_app/widgets/small_text.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.popularScreenImageSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food0.png"),
                ),
              ),
            ),
          ),
          Positioned(
            left: Dimension.width20,
            right: Dimension.width20,
            top: Dimension.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconData: Icons.arrow_back,
                ),
                AppIcon(
                  iconData: Icons.shopping_cart,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.popularScreenImageSize - Dimension.height30,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    Dimension.radius20,
                  ),
                  topRight: Radius.circular(
                    Dimension.radius20,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppColumn(),
                  SizedBox(height: Dimension.height10),
                  BigText(text: "Introduction"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
