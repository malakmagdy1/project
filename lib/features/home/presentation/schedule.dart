import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/dateoption.dart';
import 'package:projectlogo/core/widgets/timeoption.dart';

import '../../../core/widgets/customButton.dart';
import 'offers.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String selectedDate = 'اليوم';
  String selectedTime = '09:00 صباحًا';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width; // 📏 width
    final screenHeight = MediaQuery.of(context).size.height; // 📏 height
    final horizontalPadding = screenWidth * 0.04;
    final verticalSpacing = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'جدولة الخدمة',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
          color: AppColors.def,
          iconSize: screenWidth * 0.06, // 📏 responsive icon
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: AppColors.def,
            iconSize: screenWidth * 0.065,
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر التاريخ',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: verticalSpacing * 0.6),
              Row(
                children: [
                  Expanded(
                    child: DateOption(
                      title: 'اليوم',
                      date: DateFormat('d MMMM', 'ar').format(DateTime.now()),
                      isSelected: selectedDate == 'اليوم',
                      onTap: () {
                        setState(() {
                          selectedDate = 'اليوم';
                        });
                      },
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.025),
                  Expanded(
                    child: DateOption(
                      title: 'الغد',
                      date: DateFormat(
                        'd MMMM',
                        'ar',
                      ).format(DateTime.now().add(const Duration(days: 1))),
                      isSelected: selectedDate == 'الغد',
                      onTap: () {
                        setState(() {
                          selectedDate = 'الغد';
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: verticalSpacing),
              Container(
                padding: EdgeInsets.all(screenWidth * 0.03),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: AppColors.def,
                      size: screenWidth * 0.06,
                    ),
                    SizedBox(width: screenWidth * 0.025),
                    Expanded(
                      child: Text(
                        selectedDate == 'اليوم'
                            ? DateFormat(
                              'EEEE, d MMMM',
                              'ar',
                            ).format(DateTime.now())
                            : DateFormat('EEEE, d MMMM', 'ar').format(
                              DateTime.now().add(const Duration(days: 1)),
                            ),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: verticalSpacing * 0.4),
              Text(
                'التاريخ المحدد حاليًا: ${selectedDate == 'اليوم' ? DateFormat('EEEE, d MMMM', 'ar').format(DateTime.now()) : DateFormat('EEEE, d MMMM', 'ar').format(DateTime.now().add(const Duration(days: 1)))}',
                style: TextStyle(
                  fontSize: screenWidth * 0.032,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: verticalSpacing * 1.2),
              Text(
                'اختر الوقت',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: verticalSpacing * 0.5),

              // ⏰ Time Grid
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: screenWidth < 400 ? 2 : 3,
                // 📏 responsive grid
                childAspectRatio: 2.8,
                mainAxisSpacing: verticalSpacing * 0.5,
                crossAxisSpacing: screenWidth * 0.025,
                children: [
                  for (var time in [
                    '09:00 صباحًا',
                    '10:00 صباحًا',
                    '11:00 صباحًا',
                    '12:00 ظهرًا',
                    '01:00 ظهرًا',
                    '02:00 ظهرًا',
                    '03:00 عصرًا',
                    '04:00 عصرًا',
                    '05:00 مساءً',
                    '06:00 مساءً',
                    '07:00 مساءً',
                    '08:00 مساءً',
                  ])
                    TimeOption(
                      time: time,
                      isSelected: selectedTime == time,
                      onTap: () {
                        setState(() {
                          selectedTime = time;
                        });
                      },
                    ),
                ],
              ),
              SizedBox(height: verticalSpacing * 1.2),
            ],
          ),
        ),
      ),

      // ✅ Bottom Button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(horizontalPadding),
        child: SizedBox(
          width: double.infinity,
          height: screenHeight * 0.065, // 📏 responsive height
          child: Custombutton(
            text: "البحث عن عروض",
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OffersScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
