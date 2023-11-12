import 'package:flutter/material.dart';
import 'package:investinymobile/accueil.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFdddd), // Couleur d'arrière-plan
        body: Center(
          child: Container(
            width: 400.0,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset('./logo-removebg-preview.png'),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'phone number, username, or email',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AccueilInvestiny()), 
                               );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1b9ae9),
                  ),
                  child: Text('Connect'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF0c6094),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Log in with Google'),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'creer un compte',
                    style: TextStyle(
                      color: Color(0xFF0052ce),
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


