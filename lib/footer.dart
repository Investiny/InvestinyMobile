import 'package:flutter/material.dart';
class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return BottomAppBar(
        color: Colors.white, // Couleur de la barre inférieure
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home), // Icône d'accueil
              onPressed: () {
                // Action lors de l'appui sur l'icône d'accueil
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications), // Icône de notification
              onPressed: () {
                // Action lors de l'appui sur l'icône de notification
              },
            ),
            IconButton(
              icon: Icon(Icons.add), // Icône d'ajout d'article
              onPressed: () {
                // Action lors de l'appui sur l'icône d'ajout d'article
              },
            ),
            IconButton(
              icon: Icon(Icons.person), // Icône de profil
              onPressed: () {
                // Action lors de l'appui sur l'icône de profil
              },
            ),
          ],
        ),
      );
  }

}