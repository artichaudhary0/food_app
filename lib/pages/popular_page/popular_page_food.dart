import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_column.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  AppColumn(
                    text: "Biryani",
                  ),
                  SizedBox(height: Dimension.height10),
                  BigText(text: "Introduction"),
                  SizedBox(height: Dimension.height20),
                  //  Expandable Text
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        text: "Food is essential for survival."
                            " Everyone has their own personal choice of a favourite food."
                            " Here, in this article, we have brought to you a simple"
                            " and engrossing My Favourite Food Essay for Class 3 kids"
                            " to simplify the essay writing process and captivate their"
                            " interest in writing a fascinating essay of 10 lines on the"
                            " food they love the most."
                            " Food is essential for survival."
                            " Everyone has their own personal choice of a favourite food."
                            " Here, in this article, we have brought to you a simple"
                            " and engrossing My Favourite Food Essay for Class 3 kids"
                            " to simplify the essay writing process and captivate their"
                            " interest in writing a fascinating essay of 10 lines on the"
                            " food they love the most."
                            " Food is essential for survival."
                            " Everyone has their own personal choice of a favourite food."
                            " Here, in this article, we have brought to you a simple"
                            " and engrossing My Favourite Food Essay for Class 3 kids"
                            " to simplify the essay writing process and captivate their"
                            " interest in writing a fascinating essay of 10 lines on the"
                            " food they love the most."
                            " Food is essential for survival."
                            " Everyone has their own personal choice of a favourite food."
                            " Here, in this article, we have brought to you a simple"
                            " and engrossing My Favourite Food Essay for Class 3 kids"
                            " to simplify the essay writing process and captivate their"
                            " interest in writing a fascinating essay of 10 lines on the"
                            " food they love the most.",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
      ),
    );
  }
}
