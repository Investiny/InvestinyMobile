import 'package:flutter/material.dart';
import 'package:investinymobile/accueil.dart';

import 'ajoutpost.dart';
import 'notificatin.dart';
import 'profile.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black, // Couleur de la barre inférieure
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 255, 255, 255),
            ), // Icône d'accueil
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccueilInvestiny()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 255, 255),
            ), // Icône de notification
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Color.fromARGB(255, 255, 255, 255),
            ), // Icône d'ajout d'article
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AjoutArticle()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 255, 255, 255),
            ), // Icône de profil
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
