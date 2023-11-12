import 'package:flutter/material.dart';
import 'package:investinymobile/feedlist.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Mon Profil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
  
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('../assets/product/profile.jpg'),
            ),
            SizedBox(height: 16),

            // Informations sur l'utilisateur
            Text(
              'Nom Utilisateur',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Bio de l\'utilisateur',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Bouton Modifier Profil
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Couleur de fond du bouton
              ),
              onPressed: () {
                // Action lors de l'appui sur le bouton Modifier Profil
                print('Bouton Modifier Profil appuyé');
              },
              child: Text(
                'Modifier mes infos',
                style: TextStyle(
                  color: Colors.white, // Couleur du texte du bouton
                ),
              ),
            ),
            SizedBox(height: 16),

            // Liste des articles de l'utilisateur
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.black, // Couleur de la ligne
                    height: 20, // Hauteur de l'espace au-dessus de la ligne
                    thickness: 2, // Épaisseur de la ligne
                    indent: 20, // Retrait à gauche de la ligne
                    endIndent: 20, // Retrait à droite de la ligne
                  ),
                  SizedBox(height: 12),

                  // Lignes représentant les articles (à adapter selon vos besoins)

                  FeedList(
                      username: "user1",
                      profileImage: "../assets/product/profile.jpg",
                      productImage: "../assets/product/bag.PNG",
                      productDescription: "gdhcqgcvqgdcvqg"),
                  FeedList(
                      username: "user1",
                      profileImage: "../assets/product/profile.jpg",
                      productImage: "../assets/product/bag.PNG",
                      productDescription: "gdhcqgcvqgdcvqg"),
                  FeedList(
                      username: "user1",
                      profileImage: "../assets/product/profile.jpg",
                      productImage: "../assets/product/bag.PNG",
                      productDescription: "gdhcqgcvqgdcvqg"),
                  FeedList(
                      username: "user1",
                      profileImage: "../assets/product/profile.jpg",
                      productImage: "../assets/product/bag.PNG",
                      productDescription: "gdhcqgcvqgdcvqg"),

                  // Ajoutez autant de lignes que nécessaire
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget représentant une ligne d'article dans la liste
class ArticleTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Les trois images d'articles (à adapter selon vos besoins)
        Image.asset('../assets/product/bag.PNG', width: 120, height: 120),
        Image.asset('../assets/product/mag.PNG', width: 120, height: 120),
        Image.asset('../assets/product/pen.PNG', width: 120, height: 120),
      ],
    );
  }
}
