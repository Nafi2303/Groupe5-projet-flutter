// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import '../widgets/boutton.dart';
import '../widgets/bouttonS.dart';
import '../widgets/champDeSaisie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final utilisateurControlleur = TextEditingController();
  final mdpControlleur = TextEditingController();
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 32, 105, 37),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Continue with",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(child: Bouton(imagePath: 'lib/images/search.png')),
                SizedBox(
                  width: 50,
                ),
                Center(child: Bouton(imagePath: 'lib/images/apple.png'))
              ],
            ),
            SizedBox(height: 100),
            champDeSaisie(
              hintText: 'Nom d\'utilisateur',
              controlleur: utilisateurControlleur,
              obscureText: false,
            ),
            SizedBox(height: 20),
            champDeSaisie(
              hintText: 'Mot de passe',
              controlleur: mdpControlleur,
              obscureText: true,
            ),
            SizedBox(height: 50),
            buton(
              onTap: connexion,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "If you don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "SingnUp",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  connexion() {}
}
