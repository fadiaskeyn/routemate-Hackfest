import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 150,
    height: 150,
    color: Colors.white,
  );
}

TextField reusabletextfield(
  String text,
  IconData icon,
  bool isPasswordType,
  TextEditingController controller,
) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white70),
      labelText: text,
      labelStyle: TextStyle(
        color: Colors.black38.withOpacity(0.9),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.black45.withOpacity(0.3),
      filled: true, // Properti untuk memberi warna latar belakang
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
  );
}

// ElevatedButton signsignupbutton()