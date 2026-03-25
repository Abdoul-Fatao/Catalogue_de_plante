// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onPageSelected;

  const AppDrawer({super.key, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Catalogue des Plantes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: const Text("Burkina Faso"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/cat.png", width: 55),
            ),
            decoration: const BoxDecoration(color: Colors.green),
          ),

          ListTile(
            leading: const Icon(Icons.home, color: Colors.green),
            title: const Text("Accueil"),
            onTap: () {
              Navigator.pop(context);
              onPageSelected(0);
            },
          ),

          ListTile(
            leading: const Icon(Icons.category, color: Colors.green),
            title: const Text("Catégories"),
            onTap: () {
              Navigator.pop(context);
              onPageSelected(1);
            },
          ),

          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.red),
            title: const Text("Mes Favoris"),
            onTap: () {
              Navigator.pop(context);
              onPageSelected(2);
            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            title: const Text(
              "Quitter l'application",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onTap: () => _showExitDialog(context),
          ),

          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Version 1.0", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Quitter l'application ?"),
        content: const Text("Voulez-vous vraiment fermer l'application ?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Annuler"),
          ),
          TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: const Text("Quitter", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}