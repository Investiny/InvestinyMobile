import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:investinymobile/models/projet.dart';

class ApiService {
    static const String baseUrl = 'http://127.0.0.1:3002/api/v1/projets'; // Mettez à jour l'URL ici

  static Future<void> addArticle(Projet projet) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(projet.toJson()),
    );

    if (response.statusCode == 200) {
      // Succès
      print('Article ajouté avec succès');
    } else {
      // Échec
      print('Échec de l\'ajout de l\'article');
    }
  }
}
