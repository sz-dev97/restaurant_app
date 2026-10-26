import 'package:flutter/material.dart';
import '../screens/meal_plan/meal_plan_screen.dart';
import '../screens/journal/journal_screen.dart';
import '../screens/learning/learning_screen.dart';
import '../widgets/glass_bottom_nav.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MealPlanScreen(),
    JournalScreen(), // Missing screen handled by placeholder if this was a full 5-tab app. Using Journal for tab 2.
    Scaffold(body: Center(child: Text("Discover Screen"))), // Placeholder
    JournalScreen(), // Mapped to the clipboard icon from design
    LearningScreen(), // Mapped to the book icon from design
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _screens[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GlassBottomNav(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}