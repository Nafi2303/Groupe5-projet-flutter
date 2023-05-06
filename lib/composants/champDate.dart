import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class champDate extends StatelessWidget {
  final dateControlleur;
  final String hintText;
  const champDate({
    super.key,
    required this.hintText,
    required this.dateControlleur,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: dateControlleur,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          helperStyle: TextStyle(color: Colors.grey[500]),
        ),
        readOnly: true,
        onTap: () async {
          final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2100));
          if (picked != null) {
            String formattedDate = DateFormat('dd/MM/yyyy').format(picked);
            dateControlleur.text = formattedDate;
          }
        },
      ),
    );
  }
}
