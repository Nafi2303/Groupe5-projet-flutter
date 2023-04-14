import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp2/models/tache.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Tache>? _tache;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tache = List.generate(20, (index) {
      return (Tache(nom: "nom", date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _tache.length(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_tache[index].nom),
          );
        },
      ),
    );
  }
}
