import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AjoutForm extends StatefulWidget {
  final String title;
  final String hintText;
  final String endpoint;

  AjoutForm({required this.title, required this.hintText, required this.endpoint});

  @override
  _AjoutFormState createState() => _AjoutFormState();
}

class _AjoutFormState extends State<AjoutForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nomController = TextEditingController();
  TextEditingController _prixController = TextEditingController();
  TextEditingController _descController = TextEditingController();
  TextEditingController _dateDebutController = TextEditingController();
  TextEditingController _dateFinController = TextEditingController();
  TextEditingController _etatController = TextEditingController();
  TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Champs communs
              TextFormField(
                controller: _nomController,
                decoration: InputDecoration(labelText: widget.hintText),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer $widget.hintText';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              // Autres champs spécifiques
              TextFormField(
                controller: _prixController,
                decoration: InputDecoration(labelText: 'Prix'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer le prix';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _descController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer la description';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dateDebutController,
                decoration: InputDecoration(labelText: 'Date de début'),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null && pickedDate != DateTime.now()) {
                    _dateDebutController.text = pickedDate.toLocal().toString();
                  }
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _dateFinController,
                decoration: InputDecoration(labelText: 'Date de fin'),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null && pickedDate != DateTime.now()) {
                    _dateFinController.text = pickedDate.toLocal().toString();
                  }
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _etatController,
                decoration: InputDecoration(labelText: 'État'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer l\'état';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _imageController,
                decoration: InputDecoration(labelText: 'URL de l\'image'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer l\'URL de l\'image';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Map<String, dynamic> data = {
                      'nom': _nomController.text,
                      'prix': _prixController.text,
                      'description': _descController.text,
                      'dateDebut': _dateDebutController.text,
                      'dateFin': _dateFinController.text,
                      'etat': _etatController.text,
                      'image': _imageController.text,
                    };

                    try {
                      final response = await http.post(
                        Uri.parse(widget.endpoint),
                        headers: {'Content-Type': 'application/json'},
                        body: jsonEncode(data),
                      );

                      if (response.statusCode == 201) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${widget.title} ajouté avec succès'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Erreur lors de l\'ajout du ${widget.title.toLowerCase()}'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    } catch (e) {
                      print('Erreur: $e');
                    }
                  }
                },
                child: Text('Ajouter ${widget.title}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Dans AjoutArticle, utilisez AjoutForm comme suit:
class AjoutArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AjoutForm(
      title: 'Article',
      hintText: 'Nom de l\'article',
      endpoint: 'http://127.0.0.1:3002/api/v1/articles',
    );
  }
}

// Dans AjoutProjet, utilisez AjoutForm comme suit:
class AjoutProjet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AjoutForm(
      title: 'Projet',
      hintText: 'Titre du projet',
      endpoint: 'http://127.0.0.1:3002/api/v1/projets',
    );
  }
}
