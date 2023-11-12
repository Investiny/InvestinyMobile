import 'package:flutter/material.dart';
import 'package:investinymobile/mydrawer.dart';
import 'projectsPage.dart';

import 'footer.dart';

class AccueilInvestiny extends StatefulWidget {
  @override
  _AccueilInvestinyState createState() => _AccueilInvestinyState();
}

class _AccueilInvestinyState extends State<AccueilInvestiny> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Image.asset(
          './logo-removebg-preview.png', 
          height: 60,
        ),
        
      ),
        body:Center(
          child: ProjectsPage(),
        ),
      drawer: MyDrawer(),
      bottomNavigationBar: FooterPage(),
    );
       
  }
}