import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/my_home_page.dart';
import 'package:flutter_application_1/pages/paymentPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
