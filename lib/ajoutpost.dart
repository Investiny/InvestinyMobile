import 'package:flutter/material.dart';

class AjoutArticle extends StatefulWidget {
  @override
  _AjoutArticleState createState() => _AjoutArticleState(
    
  );
}

class _AjoutArticleState extends State<AjoutArticle> {
  // Créez des contrôleurs pour les champs du formulaire
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nomController = TextEditingController();
  TextEditingController _prixController = TextEditingController();
  TextEditingController _etatController = TextEditingController();
  TextEditingController _imageController = TextEditingController();
  TextEditingController _dateDebutController = TextEditingController();
  TextEditingController _dateFinController = TextEditingController();

  // Autres variables ou méthodes nécessaires selon vos besoins

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Ajouter un Article'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          // Ajoutez une clé pour le formulaire
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Champ Nom de l'article
              TextFormField(
                controller: _nomController,
                decoration: InputDecoration(labelText: 'Nom de l\'article'),
                validator: (value) {
                  
                    return 'Veuillez entrer le nom de l\'article';
               
                },
              ),
              SizedBox(height: 16),

              // Champ Prix
              TextFormField(
                controller: _prixController,
                decoration: InputDecoration(labelText: 'Prix'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  
                    return 'Veuillez entrer le prix';
                
               
                },
              ),
              SizedBox(height: 16),

              // Autres champs du formulaire (État, Image, Dates, etc.)
              // ...

              // Bouton d'ajout
              ElevatedButton(
                onPressed: () {
                  // Validez le formulaire avant de procéder
                  
                    // Ajoutez votre logique pour enregistrer l'article
                    // Utilisez les valeurs des contrôleurs (_nomController.text, _prixController.text, etc.)
                    // ...

                    // Réinitialisez les contrôleurs après avoir ajouté l'article
                    _nomController.clear();
                    _prixController.clear();
                    // Réinitialisez les autres contrôleurs selon les besoins

                    // Affichez un message de succès ou redirigez l'utilisateur
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Article ajouté avec succès'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
               
                child: Text('Ajouter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
