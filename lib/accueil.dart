import 'package:flutter/material.dart';
import 'package:investinymobile/mydrawer.dart';
import 'feed.dart';

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
        backgroundColor: Colors.black,
        title: Image.asset(
          './logonoir-removebg-preview.png',
          height: 60,
        ),
      ),
      body: Center(
        child: Feed(),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: MyDrawer(),
        ),
      ),
      bottomNavigationBar: FooterPage(),
    );
  }
}
