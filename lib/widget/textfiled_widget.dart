import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final Color color;
  

  
  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.color = const Color(0xFFE67F1E),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: color),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: color),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: color, width: 2.0),
          ),
        ),
      ),
    );
  }
}
