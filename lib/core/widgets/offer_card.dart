import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
// اتأكدي إن اسم الملف صح:
import 'package:projectlogo/core/widgets/ratingstarts.dart';
import 'package:projectlogo/features/home/presentation/selectPayment.dart';

import '../../features/home/presentation/offers.dart';
import 'customButton.dart';

class OfferCard extends StatefulWidget {
  final String title;
  final double price;
  final String time;
  final double rating;
  final String imagePath;

  const OfferCard({
    super.key,
    required this.title,
    required this.price,
    required this.time,
    required this.rating,
    required this.imagePath,
  });

  @override
  State<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // الصف الأول: صورة + عنوان + نجوم + رقم
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imagePath),
                  radius: 12,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                RatingStars(maxStars: 5, size: 18, spacing: 0),

                const SizedBox(width: 6),
                Text(
                  widget.rating.toStringAsFixed(1),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // السعر
            Text(
              "${widget.price} دولار",
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(color: AppColors.def),
            ),
            const SizedBox(height: 6),

            // الوقت
            Row(
              children: [
                const Icon(Icons.access_time, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(
                  "وقت التنفيذ: ${widget.time}",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // الزرارين تحت بعض وبعرض الكارت
            SizedBox(
              width: double.infinity,
              child: Custombutton(
                text: "قبول العرض",
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectPayment(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Custombutton(
                backColor: Theme.of(context).colorScheme.surface,
                textColor: Colors.black,
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OffersScreen(),
                    ),
                  );
                },
                text: "عرض التفاصيل",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
