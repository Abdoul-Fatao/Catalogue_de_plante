import 'package:flutter/material.dart';
import 'package:catalogue_plante/pages/home_page.dart';
import 'package:catalogue_plante/models/favorite.dart';   // ← Nouveau import

class DetailPlant extends StatefulWidget {
  final Plant plant;

  const DetailPlant({super.key, required this.plant});

  @override
  State<DetailPlant> createState() => _DetailPlantState();
}

class _DetailPlantState extends State<DetailPlant> {
  bool get isFavorite => favoritePlants.contains(widget.plant);

  void _toggleFavorite() {
    setState(() {
      if (isFavorite) {
        favoritePlants.remove(widget.plant);
      } else {
        favoritePlants.add(widget.plant);
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isFavorite
              ? '${widget.plant.nom} ajouté aux favoris'
              : '${widget.plant.nom} retiré des favoris',
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: isFavorite ? Colors.grey[700] : Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.plant.nom,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset(
                widget.plant.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
                onPressed: _toggleFavorite,
              ),
            ],
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.plant.nom_scient,
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.green.shade700,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Section Vertus
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 12),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Vertus & Bienfaits",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ..._splitVertus(widget.plant.vertus).map(
                              (virtue) => Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.check_circle, color: Colors.green, size: 20),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    virtue,
                                    style: const TextStyle(fontSize: 15, height: 1.45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _toggleFavorite,
        backgroundColor: isFavorite ? Colors.white : Colors.green,
        foregroundColor: isFavorite ? Colors.green : Colors.white,
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        label: Text(isFavorite ? "Retirer des favoris" : "Ajouter aux favoris"),
      ),
    );
  }

  List<String> _splitVertus(String vertus) {
    return vertus
        .split(RegExp(r'[.;]\s*'))
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }
}