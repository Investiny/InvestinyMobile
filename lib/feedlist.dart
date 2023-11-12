import 'package:flutter/material.dart';

class FeedList extends StatelessWidget {
  final String username;
  final String profileImage;
  final String productImage;
  final String productDescription;

  FeedList({
    required this.username,
    required this.profileImage,
    required this.productImage,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(.3))),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(profileImage),
            ),
            title: Text(
              username,
              style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontWeight: FontWeight.w400,
                fontSize: 21,
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Image.asset(
            productImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {
                        // Action à effectuer lors de l'appui sur le bouton Investih
                        print("Investih button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Couleur de fond du bouton
                      ),
                      child: Text(
                        "Investih",
                        style: TextStyle(
                          color: Colors.white, // Couleur du texte du bouton
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.send, size: 31),
                  ],
                ),
                Icon(Icons.bookmark_border, size: 31)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text(
              productDescription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
