import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:investinymobile/articlex.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          feed(context, '../assets/product/bag.PNG'),
          SizedBox(height: 20),
          feed(context, '../assets/product/mag.PNG'),
          SizedBox(height: 20),
          feed(context, '../assets/product/pc.PNG'),
          SizedBox(height: 20),
          feed(context, '../assets/product/pen.PNG'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Ajoutez le paramètre `BuildContext` à votre fonction `feed`
Widget feed(BuildContext context, String image) {
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
            backgroundImage: AssetImage('../assets/product/profile.jpg'),
          ),
          title: Text(
            'user 1',
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
              fontWeight: FontWeight.w400,
              fontSize: 21,
            ),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset(
          image,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Article()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text(
                      "Investih",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.send, size: 31),
                ],
              ),
              Icon(Icons.bookmark_border, size: 31),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            'description du produit []',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(.8),
            ),
          ),
        )
      ],
    ),
  );
}
