import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/dummy_data.dart';

class MealPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Meal Plan 🔥", style: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 24)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildPersonalizeCard(),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Lunch or Dinner", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("See all", style: TextStyle(color: AppColors.textSecondary)),
            ],
          ),
          const SizedBox(height: 15),
          ...DummyData.meals.map((meal) => _buildMealCard(meal)).toList(),
        ],
      ),
    );
  }

  Widget _buildPersonalizeCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: AppColors.yellowPastel, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Personalise Meal Plan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text("To personalize your menu, we still\nneed information.", style: TextStyle(fontSize: 12)),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.yellowSolid,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: () {},
            child: const Text("Fill in Data"),
          )
        ],
      ),
    );
  }

  Widget _buildMealCard(Map<String, dynamic> meal) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 140,
      decoration: BoxDecoration(color: Color(meal['color']), borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
            left: 20, top: 20,
            child: Icon(Icons.favorite, color: Colors.black87, size: 20),
          ),
          Positioned(
            left: 20, top: 50,
            child: SizedBox(
              width: 150,
              child: Text(meal['title'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          ),
          Positioned(
            left: 20, bottom: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(color: Colors.white54, borderRadius: BorderRadius.circular(10)),
              child: Row(children: [Icon(Icons.schedule, size: 14), SizedBox(width: 4), Text(meal['time'], style: TextStyle(fontSize: 12))]),
            ),
          ),
          Positioned(
            right: -20, bottom: -10,
            child: CircleAvatar(radius: 70, backgroundColor: Colors.white24), // Placeholder for food image
          ),
          Positioned(
            right: 10, top: 10,
            child: CircleAvatar(radius: 18, backgroundColor: Colors.white, child: Icon(Icons.add, color: Colors.black)),
          )
        ],
      ),
    );
  }
}