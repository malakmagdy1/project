import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';

// class CustomTextField extends StatelessWidget {
//   final String label;
//   final String hint;
//
//   const CustomTextField({
//     super.key,
//     required this.label,
//     required this.hint,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 6),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             textAlign: TextAlign.start,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 6),
//           TextField(
//             decoration: InputDecoration(
//               hintText: hint,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             textDirection: TextDirection.rtl,
//           ),
//         ],
//       ),
//     );
//   }
// }
class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final Widget? prefixIcon;

  // final bool obscureText;
  final Widget? suffixIcon;
  final String label;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.prefixIcon,
    //required this.obscureText,
    this.suffixIcon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme
              .of(context)
              .textTheme
              .titleMedium,),
          const SizedBox(height: 6),
          TextFormField(
            // obscureText: obscureText,
            cursorColor: AppColors.azrak,
            style: Theme
                .of(context)
                .textTheme
                .bodySmall,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: Theme
                  .of(context)
                  .textTheme
                  .bodySmall,
              prefixIcon: prefixIcon,
              prefixIconColor: AppColors.greydark,
              suffixIcon: suffixIcon,
              suffixIconColor: AppColors.greydark,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.greydark),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.greydark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColors.greydark),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
