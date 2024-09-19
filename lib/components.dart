import 'package:flutter/material.dart';

Widget buildColoredContainer(Color color, String text) {
  return Container(
    width: 100,
    height: 70,
    color: color,
    alignment: Alignment.center,
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildWrappedTextButton(
    String text, Color containerColor, VoidCallback onPressed) {
  return Container(
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(0, 4),
          blurRadius: 8,
        ),
      ],
    ),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: containerColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
