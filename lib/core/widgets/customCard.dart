import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  final String? title;
  final String subtitle;
  final IconData leftIcon;
  final String? rightIButoon;
  final IconData? rightIcon;
  final Color? TextColor;
  final Color? textBColor;

  Customcard({
    this.title,
    required this.leftIcon,
    required this.subtitle,
    this.rightIButoon,
    this.textBColor,
    this.TextColor,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: ListTile(
          leading: Icon(
            leftIcon,
            size: 30,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          title:
              title == null
                  ? null
                  : Text(
                    "$title",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

          subtitle: Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: TextColor),
          ),
          trailing:
              rightIButoon != null
                  ? TextButton(
                    onPressed: () {},
                    child: Text(
                      rightIButoon!,
                      style: TextStyle(color: textBColor),
                    ),
                  )
                  : Icon(rightIcon, size: 18),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
