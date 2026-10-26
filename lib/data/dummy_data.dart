// Simulating backend data
class DummyData {
  static const List<Map<String, dynamic>> meals = [
    {
      'title': 'Gnocchi a la Sorrentina',
      'time': '20 min',
      'image': 'assets/gnocchi.png', // Replace with network/asset image
      'color': 0xFFD8F3D4,
    },
    {
      'title': 'Chicken Salad Lettuce Wraps',
      'time': '30 min',
      'image': 'assets/salad.png', 
      'color': 0xFFD8F3D4,
    },
  ];

  static const List<Map<String, dynamic>> learningArticles = [
    {
      'title': 'Nutrition Without Obsession',
      'author': 'Nutritionisthenewblack',
      'color': 0xFFD6C8FF,
    },
    {
      'title': 'Tricks for Citrus Peels',
      'author': 'TooGoodToGo',
      'color': 0xFFE0F7FA,
    },
    {
      'title': 'ekilu, the Recipe for a Balanced Life',
      'author': 'ekilu Team',
      'color': 0xFFFFEEA8,
    },
  ];
}