import 'package:flutter/material.dart';

void main() {
  runApp(ChillisMenuApp());
}

class ChillisMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chili\'s Menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Map<String, String>> menuCategories = [
    {'title': 'Featured Items', 'image': 'assets/images/featured_items.png'},
    {'title': 'Appetizers', 'image': 'assets/images/appetizers.png'},
    {'title': 'Fajitas', 'image': 'assets/images/fajitas.png'},
    {'title': 'Big Mouth Burgers®', 'image': 'assets/images/big_mouth_burgers.png'},
    {'title': 'Chicken Crisper® Combos', 'image': 'assets/images/chicken_crisper.png'},
    {'title': 'Steaks & Ribs', 'image': 'assets/images/steaks_ribs.png'},
    {'title': 'Smokehouse Combos', 'image': 'assets/images/smokehouse_combos.png'},
    {'title': 'Chicken & Seafood', 'image': 'assets/images/chicken_seafood.png'},
    {'title': 'Guiltless Grill', 'image': 'assets/images/guiltless_grill.png'},
    {'title': 'Bowls & Quesadillas', 'image': 'assets/images/bowls_quesadillas.png'},
    {'title': 'Sandwiches', 'image': 'assets/images/sandwiches.png'},
    {'title': '3 For Me®', 'image': 'assets/images/3_for_me.png'},
    {'title': 'Lunch Favorites', 'image': 'assets/images/lunch_favorites.png'},
    {'title': 'Salads, Soups & Chili', 'image': 'assets/images/salads_soups_chili.png'},
    {'title': 'To-Go Alcohol', 'image': 'assets/images/to_go_alcohol.png'},
    {'title': 'Desserts', 'image': 'assets/images/desserts.png'},
    {'title': 'Sides & Sauces', 'image': 'assets/images/sides_sauces.png'},
    {'title': 'Kids Menu', 'image': 'assets/images/kids_menu.png'},
    {'title': 'Beverages', 'image': 'assets/images/beverages.png'},
    {'title': 'Party Platters', 'image': 'assets/images/party_platters.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chili\'s Menu',
          style: TextStyle(
            color: Colors.red, // Rouge pour le texte Chili's Menu
          ),
        ),
        backgroundColor: Colors.white, // Fond blanc pour l'en-tête
        centerTitle: true,
      ),
      body: SingleChildScrollView(  // Ajout du défilement
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Limiter la hauteur du GridView à une taille définie pour permettre le défilement
              GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Désactiver le défilement interne de la grille
                shrinkWrap: true, // Permettre à la grille de prendre la place minimale nécessaire
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Nombre de colonnes dans la grille
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 3 / 2, // Proportion des cartes
                ),
                itemCount: menuCategories.length,
                itemBuilder: (context, index) {
                  return MenuCard(
                    title: menuCategories[index]['title']!,
                    imagePath: menuCategories[index]['image']!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String imagePath;

  MenuCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
