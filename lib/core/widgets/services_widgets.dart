import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;

  const CustomTextField({
    required this.label,
    this.hintText, 
    this.keyboardType = TextInputType.text,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText, 
        labelStyle: TextStyle(
          color: AppColors.def, 
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.def, width: 2),
        ),
      ),
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black, 
      ),
    );
  }
}
