import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:tp2/page/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  void connexion() async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: 'mamadev@herbidev.com', password: 'password123');

      await firebaseAuth.createUserWithEmailAndPassword(
          email: 'herbilot@herbidev.com', password: 'password123');

      await firebaseAuth.createUserWithEmailAndPassword(
          email: 'papadev@herbidev.com', password: 'password123');
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),

      // home: Scaffold(
      //   appBar: AppBar(title:
      //   Text('ceci est un tire'),
      //   ),
      //   body:Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text('We are the dream team'),
      //         ElevatedButton(onPressed: connexion, child:
      //         Text('Rjoignez-nous'))
      //     ],),
      //   )

      // ),
    );
  }
}
