import 'package:car_app/app/view/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F2F7),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
