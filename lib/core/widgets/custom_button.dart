// import 'package:flutter/material.dart';
// import 'package:projectlogo/core/utils/app_color.dart' show AppColors;
//
// class CustomButton extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;
//   final Color backgroundColor;
//   final Color textColor;
//
//   const CustomButton({
//     super.key,
//     required this.title,
//     required this.onPressed,
//     this.backgroundColor = AppColors.def, // اللون الافتراضي
//     this.textColor = Colors.white,        // لون النص الافتراضي
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 200,
//       height: 50,
//       child: ElevatedButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
// backgroundColor: backgroundColor,
//        foregroundColor: textColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//         child: Text(title),
//       ),
//     );
//   }
// }
