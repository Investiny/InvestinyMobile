// projects_page.dart
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
 

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _buildBody(),
    );
  }

  Container _buildBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Ajoutez ici le contenu spécifique de la page
          ],
        ),
      ),
    );
  }
}
