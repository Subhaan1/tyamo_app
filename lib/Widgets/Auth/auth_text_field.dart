import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final bool obscureText;
  final TextInputType keyboardType;
  final IconData icon;
  final String labelText;
  final double size;

  AuthTextField({
    required this.obscureText,
    required this.keyboardType,
    required this.icon,
    required this.labelText,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: size),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          fillColor: const Color(0xffE7E7F2),
          filled: true,
          prefixIcon: Icon(icon, size: size),
          prefixIconColor: const Color(0xff00205C),
          label: Text(labelText),
          labelStyle: GoogleFonts.poppins(fontSize: size, color: Colors.black),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
