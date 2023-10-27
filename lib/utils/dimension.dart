import 'package:get/get.dart';

// screenHeight / x (factor to get specific height)

class Dimension {
  static double screenHeight = Get.height;
  static double screenWidth = Get.width;
  //page view
  static double pageView = screenHeight / 2.64; // 300
  static double pageViewController = screenHeight / 4.0; //210
  static double pageviewTextController = screenHeight / 6.16; //120

  // listview
  static double listviewImageController = screenWidth / 3; // x = 120
  static double listViewTextController = screenWidth / 3.6; // x = 100

  // size of padding, margin etc...
  static double height5 = screenHeight / 148; // x = 5
  static double height8 = screenHeight / 92.5; // x = 8
  static double height10 = screenHeight / 74; // x = 10
  static double height15 = screenHeight / 49.33; // x = 15
  static double height20 = screenHeight / 37; // x = 20
  static double height25 = screenHeight / 29.6; // x = 25
  static double height30 = screenHeight / 24.66; // x = 30
  static double height40 = screenHeight / 18.50; // x =40
  static double height45 = screenHeight / 16.44; // x = 45

  // size of fonts
  static double font12 = screenHeight / 61.66; // x = 12
  static double font20 = screenHeight / 37; // x=20

  // radius
  static double radius15 = screenHeight / 49.33; // x=15
  static double radius20 = screenHeight / 37; // x=20
  static double radius30 = screenHeight / 24.66; // x=30

  // width
  static double width5 = screenHeight / 148; // x = 5
  static double width8 = screenHeight / 92.5; // x = 8
  static double width10 = screenHeight / 74; // x = 10
  static double width15 = screenHeight / 49.33; // x = 15
  static double width20 = screenHeight / 37; // x = 20
  static double width25 = screenHeight / 29.6; // x = 25
  static double width30 = screenHeight / 24.66; // x = 30
  static double width40 = screenHeight / 18.50; // x =40
  static double width45 = screenHeight / 16.44; // x = 45

  //icon
  static double icon24 = screenHeight / 31; //x= 24
}
