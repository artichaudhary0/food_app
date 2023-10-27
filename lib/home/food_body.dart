import 'package:flutter/material.dart';
import 'package:food_app/utils/color.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/icon_and_text.dart';
import 'package:food_app/widgets/small_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentValue = 0.0;
  double scaleFactor = 0.8;
  double height = Dimension.pageViewController;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentValue = pageController.page!;
        // print("current " + _currentValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimension.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 5,
          effect: WormEffect(
            dotHeight: Dimension.height8,
            dotWidth: Dimension.height8,
            activeDotColor: AppColors.mainColor,
            dotColor: Colors.grey,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimension.width30,
            top: Dimension.height20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              BigText(text: "Popular"),
              SizedBox(width: Dimension.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: Dimension.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing"),
              ),
            ],
          ),
        ),
        // list of food and images...
        SizedBox(
          height: 900,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, position) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimension.width15,
                  bottom: Dimension.height10,
                  right: Dimension.width15,
                ),
                child: Row(
                  children: [
                    Container(
                      height: Dimension.listviewImageController,
                      width: Dimension.listviewImageController,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimension.radius20,
                        ),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/food0.png",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimension.listViewTextController,
                        padding: EdgeInsets.only(
                          left: Dimension.width10,
                          // top: Dimension.height10,
                          // bottom: Dimension.height10,
                          // right: Dimension.width5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              Dimension.radius20,
                            ),
                            bottomRight: Radius.circular(Dimension.radius20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            BigText(text: "Hydrabad Biryani"),
                            SizedBox(height: Dimension.height10),
                            SmallText(text: "With Indian Love"),
                            SizedBox(height: Dimension.height10),
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
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentValue.floor()) {
      var currScale = 1 - (_currentValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentValue.floor() + 1) {
      var currScale =
          scaleFactor + (_currentValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentValue.floor() - 1) {
      var currScale = 1 - (_currentValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewController,
            margin: EdgeInsets.only(
                left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius30),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/food0.png",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageviewTextController,
              margin: EdgeInsets.only(
                left: Dimension.width30,
                right: Dimension.width30,
                bottom: Dimension.height30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.radius20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimension.height15,
                  left: Dimension.width15,
                  right: Dimension.width15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BigText(text: "Bitter Orange marinade"),
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
