import 'package:catalogue_plante/pages/home_page.dart';
import 'package:catalogue_plante/pages/info_page.dart';
import 'package:catalogue_plante/pages/info1_page.dart';
import 'package:catalogue_plante/pages/detail_page.dart';
import 'package:catalogue_plante/pages/categorie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
//
class Plant {
  final nom ;
  final imagePath;
  final vertus;
  final categorie;
  final nom_scient;

  Plant({
    required this.nom,
    required this.imagePath,
    required this.vertus,
    required this.categorie,
    required this.nom_scient,
  });
}

final List<Plant> myPlants = [
  Plant(
    nom: "Aloe Vera",
    imagePath: "assets/images/Aloe Vera.webp",
    nom_scient:"(Aloe vera)",
    vertus: "L'Aloe Vera est miraculeuse pour la peau. Elle hydrate en profondeur, apaise les brûlures légères et aide à la cicatrisation des plaies. Elle a aussi des propriétés anti-inflammatoires.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Menthe",
    imagePath: "assets/images/Menthe.webp",
    nom_scient:"",
    vertus: "La menthe est excellente pour la digestion. Elle aide à réduire les ballonnements et apaise l'estomac. Elle est aussi utilisée pour soulager les maux de tête en infusion.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Bananier",
    imagePath: "assets/images/banane.png",
    nom_scient:"(Musa spp.)",
    vertus: "La lavande est la plante de la relaxation par excellence. Elle aide à réduire l'anxiété, calme le système nerveux et favorise un sommeil réparateur.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Avocatier",
    imagePath: "assets/images/avocat.png",
    nom_scient:"(Persea americana)",
    vertus: "La lavande est la plante de la relaxation par excellence. Elle aide à réduire l'anxiété, calme le système nerveux et favorise un sommeil réparateur.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Bissap",
    imagePath: "assets/images/bissap.webp",
    nom_scient:"(Hibiscus sabdariffa)",
    vertus: "La lavande est la plante de la relaxation par excellence. Elle aide à réduire l'anxiété, calme le système nerveux et favorise un sommeil réparateur.",
    categorie: "Utilitaire",
  ),
  Plant(
    nom: "Karité",
    imagePath: "assets/images/karité.png",
    nom_scient:"(Vitellaria paradoxa)  ",
    vertus: "Beurre pour l'alimentation et la peau ; l'écorce traite le paludisme infantile.",
    categorie: "Utilitaire",
  ),
  Plant(
    nom: "Néré",
    imagePath: "assets/images/néré.webp",
    nom_scient:"(Parkia biglobosa)",
    vertus: "Graines fermentées (soumbala) contre l'hypertension ; écorce contre la fièvre.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Baobab",
    imagePath: "assets/images/im2.jpg",
    nom_scient:"(Adansonia digitata)",
    vertus: "Feuilles riches en fer (sauces) ; pulpe antidiarrhéique ; écorce fortifiante..",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Moringa",
    imagePath: "assets/images/im2.jpg",
    nom_scient:"(Moringa oleifera)",
    vertus: "Surnommé néverdier  stimule l'immunité, traite l'anémie et le diabète.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Kinkéliba",
    imagePath: "assets/images/Kinkéliba.webp",
    nom_scient:"(Combretum micranthum)",
    vertus: "Infusion célèbre pour laver le foie, contre l'ictère et le paludisme.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Neem",
    imagePath: "assets/images/neem.png",
    nom_scient:"(Azadirachta indica)",
    vertus: "Antipaludique puissant (infusion) ; l'huile est un insecticide naturel.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Tamarinier",
    imagePath: "assets/images/Tamarinier.webp",
    nom_scient:"(Tamarindus indica)",
    vertus: "Laxatif léger ; pulpe utilisée contre la fièvre et pour les boissons.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Manguie",
    imagePath: "assets/images/mangue.png",
    nom_scient:"(Mangifera indica)",
    vertus: "Feuilles en décoction contre le paludisme, la toux et l'hypertension.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Eucalyptus",
    imagePath: "assets/images/Eucalyptus.webp",
    nom_scient:"(Eucalyptus camaldulensis)",
    vertus: "Utilisé en inhalation pour traiter le rhume, la sinusite et la toux.",
    categorie: "Utilitaire",
  ),
  Plant(
    nom: "Citronnier",
    imagePath: "assets/images/citron.png",
    nom_scient:"(Citrus aurantifolia)",
    vertus: "Antiseptique ; jus utilisé contre le rhume et pour purifier l'eau.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Anacardier",
    imagePath: "assets/images/anacar.png",
    nom_scient:"(Anacardium occid)",
    vertus: "Noix de cajou (export) ; pomme riche en vitamine C ; écorce antidiarrhéique.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Papayer",
    imagePath: "assets/images/papaye.png",
    nom_scient:"(Carica papaya)",
    vertus: "Graines contre les parasites intestinaux ; feuilles pour attendrir la viande.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Gingembre",
    imagePath: "assets/images/Gingembre.webp",
    nom_scient:"(Zingiber officinale)",
    vertus: "Boisson énergisante (Gnamakoudji) ; anti-inflammatoire et aphrodisiaque.",
    categorie: "Médicinale",
  ),
  Plant(
    nom: "Patate douce",
    nom_scient:"(Ipomoea batatas)",
    imagePath: "assets/images/Patate douce.png",
    vertus: "Feuilles cuisinées en sauce (riches en vitamines) ; tubercule énergétique.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Goyavier",
    imagePath: "assets/images/Goyavier.webp",
    nom_scient:"(Psidium guajava)",
    vertus: "Fruit riche en Vitamine C ; les jeunes feuilles en décoction sont radicale contre la diarrhée.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Oranger",
    imagePath: "assets/images/Oranger.png",
    nom_scient:"(Citrus sinensis)",
    vertus: "Fruit énergétique ; l'infusion de feuilles est calmante et facilite le sommeil.",
    categorie: "Fruitieuse",
  ),
  Plant(
    nom: "Pomme-cannelle",
    imagePath: "assets/images/Pomme-cannelle.webp",
    nom_scient:"(Annona squamosa)",
    vertus: "Fruit sucré très apprécié ; les graines broyées sont parfois utilisées comme insecticide.",
    categorie: "Fruitieuse",
  )
];




class HomePage extends StatefulWidget {
  final String? categoryFilter;

  const HomePage({super.key, this.categoryFilter});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Contrôleur + état de la recherche
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase().trim();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. Filtre catégorie (s'il existe)
    List<Plant> filteredByCategory = widget.categoryFilter == null
        ? myPlants
        : myPlants.where((p) => p.categorie == widget.categoryFilter).toList();

    // 2. Ensuite on applique le filtre recherche (sur le nom)
    List<Plant> displayedPlants = _searchQuery.isEmpty
        ? filteredByCategory
        : filteredByCategory.where((plant) {
      return plant.nom.toLowerCase().contains(_searchQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.categoryFilter == null
          ? "Catalogue des Plantes"
              : "${widget.categoryFilter} - Plantes",
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,

        // ← Bouton Retour automatique quand on vient d'une catégorie
        leading: widget.categoryFilter != null
        ? IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        )
            : IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer(),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              "assets/images/cat.png",
              width: 75,
              height: 45,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ── Barre de recherche ───────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300, width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Icon(
                      Icons.search,
                      color: const Color(0xFF059669),
                      size: 24,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        autofocus: false,
                        decoration: InputDecoration(
                          hintText: 'Rechercher une plante...',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    if (_searchQuery.isNotEmpty)
                      IconButton(
                        icon: const Icon(Icons.clear, color: Colors.grey),
                        onPressed: () {
                          _searchController.clear();
                          // le listener va mettre à jour _searchQuery
                        },
                      ),
                  ],
                ),
              ),
            ),

            // Texte intro (optionnel : on peut le cacher si recherche active)
            if (_searchQuery.isEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text(
                  "Découvrez la végetation du Burkina Faso",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ).animate().fadeIn(duration: 1400.ms).moveY(begin: 15, end: 0),
              ),
            ],

            // Résultats
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: displayedPlants.isEmpty
                  ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Icon(Icons.search_off, size: 80, color: Colors.grey[400]),
                    const SizedBox(height: 16),
                    Text(
                      "Aucune plante trouvée pour \"$_searchQuery\"",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              )
                  : Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: displayedPlants
                      .map((plant) => buildCard(context, plant))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildCard(BuildContext context, Plant plant) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          // REDIRECTION : On envoie l'objet 'plant' à la page de détails
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPlant(plant: plant),
            ),
          );

        },
        child: SizedBox(
          width: 350,
          height: 220,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  plant.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      plant.nom,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      plant.nom_scient,
                      style: const TextStyle(fontSize: 16),
                    ),

                      // Action Button
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF059669), Color(0xFF047857)],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF059669).withOpacity(0.2),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            Icon(
                              Icons.auto_awesome,
                              color: Colors.white,
                              size: 23,
                            ),

                            SizedBox(width: 12),
                            Text(
                              'Découvrir les bienfaits',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                      ),
                    ),
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 1500.ms) // Apparition douce
        .moveY(begin: 20, end: 0, duration: 1000.ms);
  }
}
