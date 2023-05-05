import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class datePicker extends StatelessWidget {
  late DateTime date;
  final controller;
  datePicker({
    super.key,
    required this.date,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    Future<Null> _selectDate(BuildContext context) async {
      DateFormat formater = DateFormat('dd/MM/yyyy');
    }

    return InkWell(
      onTap: () async {
        final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2100));
        if (picked != null) {
          date = picked;
          controller:
          controller;
        }
      },
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200]),
        child: Image.asset(
          'lib/images/agenda.png',
          height: 40,
        ),
      ),
    );
  }
}
