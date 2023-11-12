import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       ListView(
          
          children: <Widget>[
            
            SizedBox(
              height: 10,
            ),
            feed('../assets/product/bag.PNG'),
            SizedBox(height: 20,),
            feed('../assets/product/mag.PNG'),SizedBox(height: 20,),
            feed('../assets/product/pc.PNG'),SizedBox(height: 20,),
            feed('../assets/product/pen.PNG'),SizedBox(height:20,),
          ],
        ),
      
    );
  }
}

Widget product(String image, name) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(1),
          width: 76,
          height: 76,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFc05ba6), width: 3)),
          child: ClipOval(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.black.withOpacity(.8), fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

Widget feed(String image) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(.3)))),
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
                fontSize: 21),
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
                 
                  SizedBox(
                    width: 12,
                  ),
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
                  SizedBox(
                    width: 12,
                  ),
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
            'description du produit []',
            style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.8)),
          ),
        )
      ],
    ),
  );
}
