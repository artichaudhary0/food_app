import 'package:flutter/material.dart';
import 'package:food_app/pages/popular_page/popular_page_food.dart';
import 'package:food_app/pages/popular_page/recommended_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const RecommendedFoodPage(),
    );
  }
}
