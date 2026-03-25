import 'package:catalogue_plante/pages/detail_page.dart';
import 'package:catalogue_plante/pages/home_page.dart';
import 'package:flutter/material.dart';

class CategoriePage extends StatelessWidget {
  final String? categoryFilter; // Optionnel : si nul, on affiche tout

  const CategoriePage({super.key, this.categoryFilter});

  @override
  Widget build(BuildContext context) {
    // Liste des catégories avec icônes et couleurs
    final List<Map<String, dynamic>> categories = [
      {"name": "Médicinale",
        "icon": Icons.health_and_safety,

      },
      {"name": "Fruitieuse",
        "icon": Icons.spa,

      },
      {"name": "Utilitaire",
        "icon": Icons.handyman,

      },

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catégories de Plantes"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),

            ),
          ]

        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final cat =categories[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ]
              ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  leading: CircleAvatar(
                    backgroundColor: cat['color'],
                    child:  Icon(cat['icon'] ,color: cat['color']),
                  ),
                  title: Text(
                    cat['name'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("voir toute les plantes ${cat['name'].toLowerCase()}s"),
                  trailing: Icon(Icons.arrow_forward_ios,
                  size: 16,),
                  onTap: () {
                    // On va à la HomePage en envoyant le filtre
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(categoryFilter: cat['name']),
                      ),
                    );
                  },
                )
            );


          }
      )
    );

  }
  Widget buildCard(BuildContext context, Plant plant) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPlant(plant: plant)),
          );
        },
        child: SizedBox(
          width: 500,
          height: 70,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                    plant.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                    plant.nom,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}