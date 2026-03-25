import 'package:flutter/material.dart';
import 'package:catalogue_plante/pages/home_page.dart';
import 'package:catalogue_plante/pages/categorie.dart';
import 'package:catalogue_plante/pages/favorie_page.dart';
import 'package:catalogue_plante/widgets/app_drawer.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CategoriePage(),
    const FavoritesPage(),
  ];

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(onPageSelected: changePage),   // ← On passe la fonction
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Catégorie"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favori"),
        ],
      ),
    );
  }
}