import 'package:flutter/material.dart';
import 'presentation/layout/main_layout.dart';
// import 'core/theme/app_theme.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health App UI Design ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Highly recommended to add Google Fonts 'Poppins' to pubspec.yaml for exact typography match
        primarySwatch: Colors.blue,
      ),
      home: MainLayout(),
    );
  }
}