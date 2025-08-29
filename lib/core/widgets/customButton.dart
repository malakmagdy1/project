import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';

class Custombutton extends StatelessWidget {
  final VoidCallback onpress;
  final String text;
  final Color? backColor;
  final Color? textColor;

  Custombutton({
    required this.onpress,
    required this.text,
    this.backColor = AppColors.def,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: backColor ?? Theme.of(context).colorScheme.surface,
      ),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(color: textColor),
      ),
    );
  }
}
