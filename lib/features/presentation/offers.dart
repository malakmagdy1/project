import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/offer_card.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' العروض',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.def,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
            color: AppColors.def,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          OfferCard(
            title: "شركة نقل سريع",
            price: 350,
            time: "2-3 ساعات",
            rating: 4.8,
            imagePath: "assets/images/car.png",
          ),
          OfferCard(
            title: "شروق للنقل",
            price: 320,
            time: "4-5 ساعات",
            rating: 4.5,
            imagePath: "assets/images/carr.png",
          ),
          OfferCard(
            title: "خدمات لوجيستية",
            price: 380,
            time: "2-3 ساعات",
            rating: 4.9,
            imagePath: "assets/images/carrr.png",
          ),
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