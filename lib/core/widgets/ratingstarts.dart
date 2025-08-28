import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  final int maxStars;   // أقصى عدد نجوم
  final double size;    // حجم النجمة
  final double spacing; // المسافة بين النجوم

  const RatingStars({
    super.key,
    this.maxStars = 5,
    this.size = 20,
    this.spacing = 0,
  });

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int selectedRating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.maxStars, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedRating = index + 1;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(right: widget.spacing),
            child: Icon(
              index < selectedRating ? Icons.star : Icons.star_border,
              color: index < selectedRating ? Colors.amber : Colors.grey,
              size: widget.size,
            ),
          ),
        );
      }),
    );
  }
}
