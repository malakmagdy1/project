import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/schedule_buildtextfield.dart';
import 'package:projectlogo/features/home/presentation/schedule.dart';

import '../../../core/widgets/customButton.dart';

class LocationSetupScreen extends StatelessWidget {
  LocationSetupScreen({super.key});

  // ✅ Form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // ✅ Controllers for meeting address
  final TextEditingController streetMeetingController = TextEditingController();
  final TextEditingController cityMeetingController = TextEditingController();
  final TextEditingController stateMeetingController = TextEditingController();
  final TextEditingController zipMeetingController = TextEditingController();

  // ✅ Controllers for delivery address
  final TextEditingController streetDeliveryController =
      TextEditingController();
  final TextEditingController cityDeliveryController = TextEditingController();
  final TextEditingController stateDeliveryController = TextEditingController();
  final TextEditingController zipDeliveryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // 📏 width
    final screenHeight = MediaQuery.of(context).size.height; // 📏 height
    final horizontalPadding = screenWidth * 0.05; // 5% padding
    final verticalSpacing = screenHeight * 0.02; // 2% spacing

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "إعداد المواقع",
          style: Theme.of(context).textTheme.bodyLarge,
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
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: screenHeight * 0.25,
                // 📏 responsive height (25% screen)
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                  image: const DecorationImage(
                    image: AssetImage("assets/images/location.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: verticalSpacing),

              Text(
                "عنوان الالتقاء",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: verticalSpacing * 0.5),

              CustomTextField(
                label: "الشارع",
                hint: "أدخل اسم الشارع",
                controller: streetMeetingController,
              ),
              CustomTextField(
                label: "المدينة",
                hint: "أدخل اسم المدينة",
                controller: cityMeetingController,
              ),
              CustomTextField(
                label: "الولاية / المنطقة",
                hint: "أدخل اسم الولاية أو المنطقة",
                controller: stateMeetingController,
              ),
              CustomTextField(
                label: "الرمز البريدي",
                hint: "أدخل الرمز البريدي",
                controller: zipMeetingController,
              ),

              SizedBox(height: verticalSpacing * 1.5),

              Text(
                "عنوان التسليم",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: verticalSpacing * 0.5),

              CustomTextField(
                label: "الشارع",
                hint: "أدخل اسم الشارع",
                controller: streetDeliveryController,
              ),
              CustomTextField(
                label: "المدينة",
                hint: "أدخل اسم المدينة",
                controller: cityDeliveryController,
              ),
              CustomTextField(
                label: "الولاية / المنطقة",
                hint: "أدخل اسم الولاية أو المنطقة",
                controller: stateDeliveryController,
              ),
              CustomTextField(
                label: "الرمز البريدي",
                hint: "أدخل الرمز البريدي",
                controller: zipDeliveryController,
              ),

              SizedBox(height: verticalSpacing * 1.5),

              Custombutton(
                text: "تاكيد الموقع",
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Schedule()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
