import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class JournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Journal", style: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 24)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildCaloriesCard(),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.2,
            children: [
              _buildMacroGridItem("Breakfast", "631 kcal", AppColors.purplePastel),
              _buildMacroGridItem("Lunch", "486 kcal", AppColors.yellowPastel),
              _buildMacroGridItem("Dinner", "359 kcal", AppColors.greenPastel),
              _buildMacroGridItem("Snack", "193 kcal", AppColors.orangePastel),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCaloriesCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [Text("🔥 Calories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))]),
              Icon(Icons.calendar_month),
            ],
          ),
          const SizedBox(height: 20),
          _buildCalorieRow("Consumed", "00 cal"),
          _buildCalorieRow("Remaining", "00 cal"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMacroRing("0/150g", "Power\nCarbs", AppColors.orangeSolid),
              _buildMacroRing("0/113g", "Protein\nPower", AppColors.orangeSolid),
              _buildMacroRing("0/50g", "Healthy\nFat", AppColors.orangeSolid),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCalorieRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: AppColors.textSecondary)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildMacroRing(String value, String label, Color color) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(value: 0.3, color: color, backgroundColor: Colors.grey.shade200),
            Text("🍳", style: TextStyle(fontSize: 12)),
          ],
        ),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10, color: AppColors.textSecondary)),
      ],
    );
  }

  Widget _buildMacroGridItem(String title, String kcal, Color color) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(radius: 16, backgroundColor: Colors.white54), // Placeholder for food pic
              Text(kcal, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              CircleAvatar(radius: 14, backgroundColor: Colors.white, child: Icon(Icons.add, size: 16, color: Colors.black)),
            ],
          )
        ],
      ),
    );
  }
}