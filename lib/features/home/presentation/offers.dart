import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/offer_card.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // 📏 width
    final screenHeight = MediaQuery.of(context).size.height; // 📏 height
    final horizontalPadding = screenWidth * 0.04; // 4% padding
    final verticalSpacing = screenHeight * 0.015; // 1.5% spacing

    return Scaffold(
      appBar: AppBar(
        title: Text('العروض', style: Theme.of(context).textTheme.bodyLarge),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.def,
          iconSize: screenWidth * 0.06, // 📏 responsive icon size
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
            color: AppColors.def,
            iconSize: screenWidth * 0.065, // 📏 responsive icon size
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalSpacing,
        ),
        children: [
          OfferCard(
            title: "شركة نقل سريع",
            price: 350,
            time: "2-3 ساعات",
            rating: 4.8,
            imagePath: "assets/images/car.png",
          ),
          SizedBox(height: verticalSpacing),
          OfferCard(
            title: "شروق للنقل",
            price: 320,
            time: "4-5 ساعات",
            rating: 4.5,
            imagePath: "assets/images/carr.png",
          ),
          SizedBox(height: verticalSpacing),
          OfferCard(
            title: "خدمات لوجيستية",
            price: 380,
            time: "2-3 ساعات",
            rating: 4.9,
            imagePath: "assets/images/carrr.png",
          ),
          SizedBox(height: verticalSpacing),
          OfferCard(
            title: "نقل التنمية",
            price: 400,
            time: "3-4 ساعات",
            rating: 4.7,
            imagePath: "assets/images/carrrr.png",
          ),
        ],
      ),
    );
  }
}
