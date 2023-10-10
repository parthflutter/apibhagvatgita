import 'package:apibhagvatgita/view/home_screen.dart';
import 'package:apibhagvatgita/view/verse_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: () => HomeScreen()),
      GetPage(name: '/second', page: () => VerseScreen()),
    ],
  ));
}
