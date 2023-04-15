import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp2/composants/button.dart';
import 'package:tp2/composants/chipBox.dart';
import 'package:tp2/composants/label.dart';
import 'package:tp2/composants/textfield.dart';
import 'package:tp2/composants/texteArea';

class PageAjout extends StatelessWidget {
  PageAjout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff1040CC),
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 45),
            IconButton(
              onPressed: null,
              icon: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Nouvelle tache',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  label('Nom de la tache'),
                  SizedBox(height: 15),
                  ChampDeSaisie(hintText: 'Nom de la tache'),
                  SizedBox(
                    height: 40,
                  ),
                  label('Priorité'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ChipData('Urgent', 0XffFF3336),
                      SizedBox(
                        width: 12,
                      ),
                      ChipData('Important', 0xff2664fa),
                      SizedBox(
                        width: 12,
                      ),
                      ChipData('Plannifié', 0xfff4127ae),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  label('Description'),
                  SizedBox(
                    height: 12,
                  ),
                  TexteArea(
                    hintText: 'Description',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      ChipData('Divertissement', 0xff00FF00),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ChipData('Travail', 0Xffff6d6e),
                      SizedBox(
                        width: 12,
                      ),
                      ChipData('Etude', 0xfff29732),
                      SizedBox(
                        width: 12,
                      ),
                      ChipData('Famille', 0xff2bc8d9),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  buton(onTap: null)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
