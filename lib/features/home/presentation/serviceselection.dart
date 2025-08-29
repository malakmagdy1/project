import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/customCard.dart';
import 'package:projectlogo/features/home/presentation/setting_screen.dart';

import '../../../core/widgets/customButton.dart';
import '../../../core/widgets/serviceRow.dart';
import 'locations.dart';

class ServiceSelection extends StatefulWidget {
  const ServiceSelection({super.key});

  @override
  _ServiceSelectionState createState() => _ServiceSelectionState();
}

class _ServiceSelectionState extends State<ServiceSelection> {
  bool needWorkers = false;
  bool needInstall = false;
  int workersCount = 0;
  int fromFloor = 1;
  int toFloor = 1;
  String transportType = "نقل داخلي (ضمن نفس المدينة)";
  int trips = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = screenWidth * 0.04;
    final verticalSpacing = screenHeight * 0.015;
    final fontSize = screenWidth * 0.04;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "اختر نوع الخدمة",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
            icon: Icon(Icons.settings, size: screenWidth * 0.06),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: AppColors.def,
              size: screenWidth * 0.065,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(horizontalPadding), // 📏 responsive padding
        child: ListView(
          children: [
            // 🚛 Furniture Transport Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.black12),
              ),
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.seconsScreen,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                      vertical: screenHeight * 0.01,
                    ),
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    leading: Icon(
                      FontAwesomeIcons.cube,
                      color: AppColors.def,
                      size: screenWidth * 0.055,
                    ),
                    title: Text(
                      "نقل الأثاث",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                      "خدمة متكاملة لنقل الأثاث بأمان وكفاءة",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    children: [
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Servicerow(
                                  title: "هل تحتاج عمال؟",
                                  needWorkers: needWorkers,
                                  // 👈 use state variable, not hardcoded
                                  onWorkersChanged: (bool value) {
                                    setState(() {
                                      needWorkers = value; // 👈 update state
                                    });
                                  },
                                  fontSize: fontSize,
                                ),
                                Spacer(),
                                Servicerow(
                                  title: "هل تحتاج معدات؟",
                                  needWorkers: needInstall,
                                  // 👈 use state variable, not false
                                  onWorkersChanged: (bool value) {
                                    setState(() {
                                      needInstall = value; // 👈 update state
                                    });
                                  },
                                  fontSize: fontSize,
                                ),
                              ],
                            ),

                            SizedBox(height: verticalSpacing),
                            Text(
                              "عدد العمال الإضافيين (اختياري)",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(height: verticalSpacing * 0.5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "0",
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: fontSize),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) =>
                                      workersCount = int.tryParse(val) ?? 0,
                            ),
                            SizedBox(height: verticalSpacing),
                            Text(
                              "من الطابق",
                              style: TextStyle(fontSize: fontSize),
                            ),
                            SizedBox(height: verticalSpacing * 0.5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "1",
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: fontSize),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) => fromFloor = int.tryParse(val) ?? 1,
                            ),
                            SizedBox(height: verticalSpacing),
                            Text(
                              "إلى الطابق",
                              style: TextStyle(fontSize: fontSize),
                            ),
                            SizedBox(height: verticalSpacing * 0.5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "5",
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: fontSize),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) => toFloor = int.tryParse(val) ?? 1,
                            ),
                            SizedBox(height: verticalSpacing),
                            Text(
                              "نوع النقل",
                              style: TextStyle(fontSize: fontSize),
                            ),
                            SizedBox(height: verticalSpacing * 0.5),
                            DropdownButtonFormField<String>(
                              value: transportType,
                              items:
                                  [
                                        "نقل داخلي (ضمن نفس المدينة)",
                                        "نقل خارجي (إلى مدينة أخرى)",
                                      ]
                                      .map(
                                        (type) => DropdownMenuItem(
                                          value: type,
                                          child: Text(
                                            type,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                              onChanged:
                                  (val) => setState(() => transportType = val!),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: verticalSpacing),
                            Text(
                              "عدد العربيات",
                              style: TextStyle(fontSize: fontSize),
                            ),
                            SizedBox(height: verticalSpacing * 0.5),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "0",
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: fontSize),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) => trips = int.tryParse(val) ?? 0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Customcard(
              leftIcon: Icons.local_shipping_outlined,
              subtitle: "لنقل البضائع و المعدت بكففه انواعها",
              title: "النقل العام",
              rightIcon: Icons.keyboard_arrow_down,
            ),
            // 🚚 General Transport Card
            // Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(12),
            //     side: BorderSide(color: Colors.black12),
            //   ),
            //   child: Theme(
            //     data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            //     child: ExpansionTile(
            //       leading: Icon(
            //         Icons.local_shipping_outlined,
            //         color: AppColors.def,
            //         size: screenWidth * 0.06,
            //       ),
            //       title: Text("النقل العام", style: TextStyle(fontSize: fontSize)),
            //       subtitle: Text(
            //         "لنقل البضائع و المعدات بكافة انواعها",
            //         style: TextStyle(fontSize: fontSize * 0.9),
            //       ),
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.all(screenWidth * 0.03),
            //           child: Text("تفاصيل أخرى...",
            //               style: TextStyle(fontSize: fontSize)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: screenHeight * 0.03),
            Custombutton(
              text: "متابعة",
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationSetupScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
