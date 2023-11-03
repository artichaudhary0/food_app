import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text.dart';

class RecommendedFoodPage extends StatefulWidget {
  const RecommendedFoodPage({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodPage> createState() => _RecommendedFoodPageState();
}

class _RecommendedFoodPageState extends State<RecommendedFoodPage> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconData: Icons.clear),
                AppIcon(
                  iconData: Icons.shopping_cart_checkout_outlined,
                )
              ],
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  top: Dimension.height5,
                  bottom: Dimension.height10,
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
                child: BigText(text: "Chole Chawal"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(
                  left: Dimension.width10,
                  right: Dimension.width10,
                  bottom: Dimension.height20,
                ),
                child: const ExpandableText(
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
                        " food they love the most."
                        "Food is essential for survival."
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
                        " food they love the most."
                        "Food is essential for survival."
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
                        " interest in writing a fascinating essay of 10 lines on the")),
          ),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
            left: Dimension.width40,
            right: Dimension.width40,
            top: Dimension.height10,
            bottom: Dimension.height10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppIcon(
                iconData: Icons.remove,
                iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
                iconSize: Dimension.icon24,
              ),
              BigText(
                text: "\$20.88" + " X " + "3",
                color: AppColors.mainBlackColor,
                size: Dimension.font26,
              ),
              AppIcon(
                iconData: Icons.add,
                iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
                iconSize: Dimension.icon24,
              ),
            ],
          ),
        ),
        Container(
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
                height: 68,
                width: 68,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    Dimension.radius20,
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.heart,
                    color: isFav ? Colors.red : AppColors.mainColor,
                  ),
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
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
      ]),
    );
  }
}
