import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class Servicerow extends StatelessWidget {
  final String title;

  final bool needWorkers;
  final Function(bool) onWorkersChanged;
  final double fontSize;

  const Servicerow({
    super.key,
    required this.needWorkers,
    required this.onWorkersChanged,
    required this.fontSize,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodySmall),
            Row(
              children: [
                Radio<bool>(
                  value: true,
                  fillColor: WidgetStateProperty.all(AppColors.def),
                  groupValue: needWorkers,
                  onChanged: (val) => onWorkersChanged(val!),
                ),
                Text("نعم", style: TextStyle(fontSize: fontSize)),
                Radio<bool>(
                  value: false,
                  fillColor: WidgetStateProperty.all(AppColors.def),
                  groupValue: needWorkers,
                  onChanged: (val) => onWorkersChanged(val!),
                ),
                Text("لا", style: TextStyle(fontSize: fontSize)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
