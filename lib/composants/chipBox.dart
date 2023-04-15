import 'package:flutter/material.dart';

Widget ChipData(String label, int color) {
  return Chip(
    backgroundColor: Color(color),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelPadding: EdgeInsets.symmetric(
      horizontal: 17,
      vertical: 3.8,
    ),
  );
}
