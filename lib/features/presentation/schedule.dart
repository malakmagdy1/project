import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/dateoption.dart';
import 'package:projectlogo/core/widgets/timeoption.dart';
import 'package:projectlogo/core/widgets/custom_button.dart';
import 'package:projectlogo/features/presentation/offers.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'جدولة الخدمة',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.def,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
            color: AppColors.def,
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر التاريخ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
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
                  SizedBox(width: 10),
                  Expanded(
                    child: DateOption(
                      title: 'الغد',
                      date: DateFormat('d MMMM', 'ar')
                          .format(DateTime.now().add(Duration(days: 1))),
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
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: AppColors.def),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        selectedDate == 'اليوم'
                            ? DateFormat('EEEE, d MMMM', 'ar')
                                .format(DateTime.now())
                            : DateFormat('EEEE, d MMMM', 'ar')
                                .format(DateTime.now().add(Duration(days: 1))),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'التاريخ المحدد حاليًا: ${selectedDate == 'اليوم' ? DateFormat('EEEE, d MMMM', 'ar').format(DateTime.now()) : DateFormat('EEEE, d MMMM', 'ar').format(DateTime.now().add(Duration(days: 1)))}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'اختر الوقت',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 2.5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  TimeOption(
                    time: '09:00 صباحًا',
                    isSelected: selectedTime == '09:00 صباحًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '09:00 صباحًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '10:00 صباحًا',
                    isSelected: selectedTime == '10:00 صباحًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '10:00 صباحًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '11:00 صباحًا',
                    isSelected: selectedTime == '11:00 صباحًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '11:00 صباحًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '12:00 ظهرًا',
                    isSelected: selectedTime == '12:00 ظهرًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '12:00 ظهرًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '01:00 ظهرًا',
                    isSelected: selectedTime == '01:00 ظهرًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '01:00 ظهرًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '02:00 ظهرًا',
                    isSelected: selectedTime == '02:00 ظهرًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '02:00 ظهرًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '03:00 عصرًا',
                    isSelected: selectedTime == '03:00 عصرًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '03:00 عصرًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '04:00 عصرًا',
                    isSelected: selectedTime == '04:00 عصرًا',
                    onTap: () {
                      setState(() {
                        selectedTime = '04:00 عصرًا';
                      });
                    },
                  ),
                  TimeOption(
                    time: '05:00 مساءً',
                    isSelected: selectedTime == '05:00 مساءً',
                    onTap: () {
                      setState(() {
                        selectedTime = '05:00 مساءً';
                      });
                    },
                  ),
                  TimeOption(
                    time: '06:00 مساءً',
                    isSelected: selectedTime == '06:00 مساءً',
                    onTap: () {
                      setState(() {
                        selectedTime = '06:00 مساءً';
                      });
                    },
                  ),
                  TimeOption(
                    time: '07:00 مساءً',
                    isSelected: selectedTime == '07:00 مساءً',
                    onTap: () {
                      setState(() {
                        selectedTime = '07:00 مساءً';
                      });
                    },
                  ),
                  TimeOption(
                    time: '08:00 مساءً',
                    isSelected: selectedTime == '08:00 مساءً',
                    onTap: () {
                      setState(() {
                        selectedTime = '08:00 مساءً';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity, 
          height: 50,
          child: CustomButton(
            title: "البحث عن عروض",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OffersScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
