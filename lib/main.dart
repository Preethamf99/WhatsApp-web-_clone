import 'package:flutter/material.dart';
import 'package:whatsup_clone/colors.dart';
import 'package:whatsup_clone/responsivenes/responsivelayout.dart';
import 'package:whatsup_clone/screen/mobile_Screen_layout.dart';
import 'package:whatsup_clone/screen/web_Screen_k_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // ignore: deprecated_member_use
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backColor),
      home: const responsiveLayout(
          webScreenlayout: WebScreenLayout(),
          MobileScreenlayout: MobileScreenLayout()),
    );
  }
}
