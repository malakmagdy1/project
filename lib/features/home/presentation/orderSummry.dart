import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/widgets/customButton.dart';
import '../../../core/widgets/customCard.dart';

class OrderSummry extends StatelessWidget {
  const OrderSummry({super.key});

  @override
  Widget build(BuildContext context) {
    // 📱 Screen size
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // 🔑 Dynamic padding & font scaling
    final horizontalPadding = width * 0.05; // 5% of screen width
    final verticalPadding = height * 0.02; // 2% of screen height
    final spacing = height * 0.015; // spacing between widgets

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            top: verticalPadding,
            bottom: verticalPadding / 2,
          ),
          child: Text(
            "Review & Confirm Your Booking",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Divider(color: AppColors.greydark),
          SizedBox(height: spacing * 2),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Booking Summary",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: spacing * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Service Fee",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "\$150.00",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(height: spacing / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Service Tax (10%)",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "\$15.00",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Divider(color: AppColors.greydark),
                SizedBox(height: spacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount Due",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: AppColors.def),
                    ),
                    Text(
                      "\$165.00",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: AppColors.def),
                    ),
                  ],
                ),
                SizedBox(height: spacing * 3),
                Text(
                  "Payment Method",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          Customcard(
            leftIcon: Icons.credit_card,
            rightIButoon: "Change",
            subtitle: "Credit Card ending in **** 4242",
            textBColor: AppColors.def,
            TextColor: Colors.black,
          ),
          SizedBox(height: spacing * 3),
          Center(
            child: SizedBox(
              width: width * 0.8, // 80% of screen width
              height: height * 0.07, // 7% of screen height
              child: Custombutton(
                onpress: () {},
                text: "Pay \$165.00 and Confirm",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
