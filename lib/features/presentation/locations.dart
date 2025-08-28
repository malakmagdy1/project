import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/schedule_buildtextfield.dart';
import 'package:projectlogo/core/widgets/custom_button.dart';
import 'package:projectlogo/features/presentation/schedule.dart';

class LocationSetupScreen extends StatelessWidget {
  const LocationSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "إعداد المواقع",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: AppColors.def),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/location.png",
                  ), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "عنوان الالتقاء",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
             const SizedBox(height: 10),
            const CustomTextField(label: "الشارع", hint: "أدخل اسم الشارع"),
            const CustomTextField(label: "المدينة", hint: "أدخل اسم المدينة"),
            const CustomTextField(label: "الولاية / المنطقة", hint: "أدخل اسم الولاية أو المنطقة"),
            const CustomTextField(label: "الرمز البريدي", hint: "أدخل الرمز البريدي"),
            const SizedBox(height: 30),

            const Text(
              "عنوان التسليم",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            const CustomTextField(label: "الشارع", hint: "أدخل اسم الشارع"),
            const CustomTextField(label: "المدينة", hint: "أدخل اسم المدينة"),
            const CustomTextField(label: "الولاية / المنطقة", hint: "أدخل اسم الولاية أو المنطقة"),
            const CustomTextField(label: "الرمز البريدي", hint: "أدخل الرمز البريدي"),

            const SizedBox(height: 30),

            CustomButton(
              title: "تاكيد الموقع",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Schedule()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}