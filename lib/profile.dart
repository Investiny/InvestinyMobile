import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Richie Lorie",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {},
                        heroTag: 'follow',
                        elevation: 0,
                        label: const Text("Follow"),
                        icon: const Icon(Icons.person_add_alt_1),
                      ),
                      const SizedBox(width: 16.0),
                      FloatingActionButton.extended(
                        onPressed: () {},
                        heroTag: 'mesage',
                        elevation: 0,
                        backgroundColor: Colors.red,
                        label: const Text("Message"),
                        icon: const Icon(Icons.message_rounded),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const _ProfileInfoRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  const _ProfileInfoRow({Key? key}) : super(key: key);

  final List<ProfileInfoItem> _items = const [
    ProfileInfoItem("Posts", 900),
    ProfileInfoItem("Followers", 120),
    ProfileInfoItem("Following", 200),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Row(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(child: _singleItem(context, item)),
                  ],
                )))
            .toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}








/*import 'package:flutter/material.dart';
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
*/