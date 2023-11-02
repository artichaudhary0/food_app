import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_body.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header
          Container(
            margin: EdgeInsets.only(
              top: Dimension.height45,
              bottom: Dimension.height15,
            ),
            padding: EdgeInsets.only(
              left: Dimension.width20,
              right: Dimension.width20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(
                      text: "Hindustan",
                      color: AppColors.mainColor,
                      size: Dimension.font20,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Delhi",
                          color: Colors.black54,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: Dimension.height45,
                  width: Dimension.width45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(
                      Dimension.radius15,
                    ),
                  ),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                    size: Dimension.icon24,
                  ),
                ),
              ],
            ),
          ),

          // slidder
          const Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),

          // heading popular food pairing
        ],
      ),
    );
  }
}
