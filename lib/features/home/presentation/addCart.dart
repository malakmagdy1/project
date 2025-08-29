import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/features/home/presentation/orderSummry.dart';

import '../../../core/widgets/customButton.dart';
import '../../../core/widgets/schedule_buildtextfield.dart';

class AddCart extends StatefulWidget {
  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  late TextEditingController cardnumberController = TextEditingController();
  late TextEditingController CardholderController = TextEditingController();
  late TextEditingController expireDateController = TextEditingController();
  late TextEditingController CVVController = TextEditingController();

  late GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // screen width
    final screenHeight = MediaQuery.of(context).size.height; // screen height
    final horizontalPadding = screenWidth * 0.05; // 5% padding
    final verticalSpacing = screenHeight * 0.02; // 2% height gap

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.02,
            bottom: screenHeight * 0.01,
          ),
          child: Text(
            "Add Your Card Details",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          // make responsive when keyboard appears
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(color: AppColors.greydark),
              SizedBox(height: verticalSpacing),
              Text(
                "Add Your Card Details",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: verticalSpacing * 0.5),
              Text(
                "Your payment information is encrypted and stored securely.",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: verticalSpacing),
              CustomTextField(
                label: "Card Number",
                hint: "-------------",
                controller: cardnumberController,
                suffixIcon: Icon(Icons.camera_alt_outlined),
                prefixIcon: Icon(Icons.credit_card),
              ),
              CustomTextField(
                label: "Cardholder Name",
                hint: "Name as it appears on the card",
                controller: CardholderController,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextField(
                      label: "Expire Date",
                      hint: "MM/YY",
                      controller: expireDateController,
                      suffixIcon: Icon(Icons.info_outline),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02), // responsive spacing
                  Expanded(
                    flex: 2,
                    child: CustomTextField(
                      label: "CVV",
                      hint: "123",
                      controller: CVVController,
                      suffixIcon: Icon(Icons.info_outline),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: ischecked,
                    activeColor: AppColors.def,
                    onChanged: (newBool) {
                      setState(() {
                        ischecked = newBool;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Save this card for faster payments in the future",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: verticalSpacing),
              Center(
                child: Custombutton(
                  onpress: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => OrderSummry()),
                    );
                  },
                  text: "Add Card",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
