// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:tp2/page/home.dart';
import 'package:tp2/page/signup.dart';
import '../composants/bouttounLogo.dart';
import '../composants/bouttonLogin.dart';
import '../composants/champDeSaisie.dart';

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
            butonL(
              onTap: connexionL,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "If you don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (builder) => Signup()),
                        (route) => false);
                  },
                  child: Text(
                    "SingnUp",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  void connexionL() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      firebase_auth.UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
              email: utilisateurControlleur.text,
              password: mdpControlleur.text);
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => HomePage()),
          (route) => false);
    } on FirebaseException catch (e) {
      print(e);
    }
  }
}
