import 'package:flutter/material.dart';
import 'package:catalogue_plante/pages/home_page.dart';
import 'package:catalogue_plante/models/favorite.dart';

import '../models/favorite.dart';
import 'detail_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes Favoris"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Retourne à l'accueil et remet l'index à 0
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
      ),
      body: favoritePlants.isEmpty
          ? _buildEmptyState()
          : Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: favoritePlants.length,
          itemBuilder: (context, index) {
            return _buildPlantCard(favoritePlants[index]);
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, size: 90, color: Colors.grey.shade300),
          const SizedBox(height: 20),
          const Text(
            "Aucun favori pour le moment",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            "Ajoutez des plantes depuis les détails",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildPlantCard(Plant plant) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailPlant(plant: plant)),
          );
        },
        child: Column(
          children: [
            Expanded(
              child: Image.asset(plant.imagePath, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                plant.nom,
                style: const TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}