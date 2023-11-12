import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          _buildNotificationItem('Nom du Client 1', 'Félicitations! Vous avez reçu un don de 5 dinars.'),
          _buildNotificationItem('Nom du Client 2', 'Vous avez une nouvelle contribution de 10 dinars.'),
          // Ajoutez d'autres notifications selon vos besoins
        ],
      ),
    );
  }

  Widget _buildNotificationItem(String clientName, String notificationText) {
    return ListTile(
      leading: CircleAvatar(
        // Remplacez par l'image du client si disponible
        backgroundColor: Colors.blue,
        child: Text(clientName[0], style: TextStyle(color: Colors.white)),
      ),
      title: Text(clientName),
      subtitle: Text(notificationText),
      onTap: () {
        // Action à effectuer lors de l'appui sur la notification
      },
    );
  }
}
