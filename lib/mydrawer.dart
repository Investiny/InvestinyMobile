import 'package:flutter/material.dart';
import 'accueil.dart';
// Assurez-vous d'importer correctement votre fichier MyHomePage

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
              accountEmail: Text('jane.doe@example.com'),
              accountName: Text(
                'Jane Doe',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.palette),
              title: const Text(
                'Art',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                  
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.desktop_mac),
              title: const Text(
                'Design et technologie',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                
                    ),
                  ),
                );
              },
            ),
                  ListTile(
              leading: const Icon(Icons.gamepad),
              title: const Text(
                'Jeux',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                
                    ),
                  ),
                );
              },
            ),
                  ListTile(
              leading: const Icon(Icons.music_note_rounded ),
              title: const Text(
                'Musique',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                
                    ),
                  ),
                );
              },
            ),
                  ListTile(
              leading: const Icon(Icons.face_unlock_sharp),
              title: const Text(
                'Kids',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                
                    ),
                  ),
                );
              },
            ),
                  ListTile(
              leading: const Icon(Icons.accessible_forward),
              title: const Text(
                'Handicapé',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  AccueilInvestiny(
                
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );

  }
}
