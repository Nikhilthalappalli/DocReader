import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/medicine.dart';
import 'package:flutter_application_1/screens/detail/detail_page.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/utils/colors.dart';
// import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DocReader APP',
      theme: ThemeData(
        primaryColor: AppColors.mainColor,
      ),
      home: Homepage(),
    );
  }
}
