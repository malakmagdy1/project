import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/features/home/presentation/addCart.dart';

import '../../../core/widgets/customButton.dart';
import '../../../core/widgets/customCard.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // 📏 width
    final screenHeight = MediaQuery.of(context).size.height; // 📏 height
    final horizontalPadding = screenWidth * 0.05; // dynamic padding
    final verticalSpacing = screenHeight * 0.02; // dynamic spacing

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.02,
            bottom: screenHeight * 0.01,
          ),
          child: Text(
            "Select Payment Method",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: screenWidth * 0.05, // 📏 responsive font
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(color: AppColors.greydark),
            SizedBox(height: verticalSpacing),
            Text(
              "Selected Payment Method",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontSize: screenWidth * 0.048),
            ),
            SizedBox(height: verticalSpacing * 0.6),
            Text(
              "Choose how you'd like to pay for the service",
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(fontSize: screenWidth * 0.038),
            ),
            SizedBox(height: verticalSpacing),
            Customcard(
              title: "Credit/Debit Card",
              leftIcon: Icons.credit_card,
              subtitle:
                  "Pay securely online with Visa, Mastercard, and other major cards.",
            ),
            SizedBox(height: verticalSpacing * 0.8),
            Customcard(
              title: "Cash Payment",
              leftIcon: Icons.attach_money,
              subtitle:
                  "Pay the driver directly in cash after the service is completed.",
            ),
            SizedBox(height: verticalSpacing * 2),
            Center(
              child: SizedBox(
                width: screenWidth * 0.7,
                height: screenHeight * 0.06,
                child: Custombutton(
                  onpress: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AddCart()),
                    );
                  },
                  text: 'Continue to Summary',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
