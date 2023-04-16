import 'package:flutter/material.dart';
import 'package:tp2/composants/cardTache.dart';
import 'package:tp2/page/ajout_tache.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1040CC),
      appBar: AppBar(
        backgroundColor: Color(0xff1040CC),
        title: Text(
          'Liste des taches',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/images/herbidev.jpg'),
          ),
          SizedBox(
            height: 25,
          ),
        ],
        bottom: PreferredSize(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                'Samedi 15 avril',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(34),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1040CC),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
              color: Colors.white,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => PageAjout()));
              },
              child: Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xff00aeef),
                      Color(0xff2d388a),
                    ])),
                child: Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
            label: 'Ajout',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 32,
              color: Colors.white,
            ),
            label: 'Réglages',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CardTache(
                libelleTache: 'Réveille',
                heure: '07h25',
                icon: Icons.alarm,
                couleurIcon: Colors.white,
                bgIcon: Colors.white,
                coche: false,
              ),
              SizedBox(
                height: 12,
              ),
              CardTache(
                libelleTache: 'Petit déjeuné',
                heure: '8h00',
                icon: Icons.coffee,
                couleurIcon: Colors.white,
                bgIcon: Colors.green,
                coche: false,
              ),
              SizedBox(
                height: 12,
              ),
              CardTache(
                libelleTache: 'Transport',
                heure: '08h15',
                icon: Icons.bus_alert,
                couleurIcon: Colors.white,
                bgIcon: Colors.red,
                coche: false,
              ),
              SizedBox(
                height: 12,
              ),
              CardTache(
                libelleTache: 'Travail',
                heure: '09h00',
                icon: Icons.business,
                couleurIcon: Colors.white,
                bgIcon: Colors.blueAccent,
                coche: false,
              ),
              SizedBox(
                height: 12,
              ),
              CardTache(
                libelleTache: 'Déjeuné',
                heure: '13h00',
                icon: Icons.restaurant,
                couleurIcon: Colors.white,
                bgIcon: Colors.greenAccent,
                coche: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
