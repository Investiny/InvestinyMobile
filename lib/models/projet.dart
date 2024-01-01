class Projet {
  String titreduprojet;
  String prix;
  String description;
  String dateDebut;
  String dateFin;
  String etat;
  String image;

  Projet({
    required this.titreduprojet,
    required this.prix,
    required this.description,
    required this.dateDebut,
    required this.dateFin,
    required this.etat,
    required this.image,
  });

  // Méthode pour convertir l'article en JSON
  Map<String, dynamic> toJson() {
    return {
      'titreduprojet': titreduprojet,
      'prix': prix,
      'description': description,
      'dateDebut': dateDebut,
      'dateFin': dateFin,
      'etat': etat,
      'image': image,
    };
  }
}
