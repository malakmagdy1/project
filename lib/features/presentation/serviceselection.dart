import 'package:flutter/material.dart';
import 'package:projectlogo/core/utils/app_color.dart';
import 'package:projectlogo/core/widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectlogo/features/presentation/locations.dart';

class ServiceSelectionScreen extends StatefulWidget {
  const ServiceSelectionScreen({super.key});

  @override
  _ServiceSelectionScreenState createState() => _ServiceSelectionScreenState();
}

class _ServiceSelectionScreenState extends State<ServiceSelectionScreen> {
  bool needWorkers = false;
  bool needInstall = false;
  int workersCount = 0;
  int fromFloor = 1;
  int toFloor = 1;
  String transportType = "نقل داخلي (ضمن نفس المدينة)";
  int trips = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("اختر نوع الخدمة"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: AppColors.def),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.black12),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent, 
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.seconsScreen, 
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    iconColor: Colors.black,
                    collapsedIconColor: Colors.black,
                    leading: Icon(FontAwesomeIcons.cube, color: AppColors.def),
                    title: Text(
                      "نقل الأثاث",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("خدمة متكاملة لنقل الأثاث بأمان وكفاءة"),
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("هل تحتاج إلى نجار؟"),
                                Spacer(),
                                Text("هل تحتاج إلى فنى تركيب؟"),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio<bool>(
                                        value: true,
                                        fillColor: WidgetStateProperty.all(
                                          AppColors.def,
                                        ),
                                        groupValue: needWorkers,
                                        onChanged: (val) {
                                          setState(() => needWorkers = val!);
                                        },
                                      ),
                                      Text("نعم"),
                                      Radio<bool>(
                                        value: false,
                                        fillColor: WidgetStateProperty.all(
                                          AppColors.def,
                                        ),
                                        groupValue: needWorkers,
                                        onChanged: (val) {
                                          setState(() => needWorkers = val!);
                                        },
                                      ),
                                      Text("لا"),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio<bool>(
                                        value: true,
                                        fillColor: WidgetStateProperty.all(
                                          AppColors.def,
                                        ),
                                        groupValue: needInstall,
                                        onChanged: (val) {
                                          setState(() => needInstall = val!);
                                        },
                                      ),
                                      Text("نعم"),
                                      Radio<bool>(
                                        value: false,
                                        fillColor: WidgetStateProperty.all(
                                          AppColors.def,
                                        ),
                                        groupValue: needInstall,
                                        onChanged: (val) {
                                          setState(() => needInstall = val!);
                                        },
                                      ),
                                      Text("لا"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text("عدد العمال الإضافيين (اختياري)"),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "0",

                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) =>
                                      workersCount = int.tryParse(val) ?? 0,
                            ),
                            SizedBox(height: 10),
                            Text("من الطابق"),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "1",

                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) => fromFloor = int.tryParse(val) ?? 1,
                            ),
                            SizedBox(height: 10),
                            Text("إلى الطابق"),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "5",

                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged:
                                  (val) => toFloor = int.tryParse(val) ?? 1,
                            ),
                            SizedBox(height: 10),
                            Text("نوع النقل"),
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
                                          child: Text(type),
                                        ),
                                      )
                                      .toList(),
                              onChanged:
                                  (val) => setState(() => transportType = val!),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("عدد العربيات"),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "0",
                                border: OutlineInputBorder(),
                              ),
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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(color: Colors.black12),

              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent, 
                ),
              child: ExpansionTile(
                leading: Icon(
                  Icons.local_shipping_outlined,
                  color: AppColors.def,
                ),
                title: Text("النقل العام"),
                subtitle: Text("لنقل البضائع و المعدات بكافة انواعها"),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("تفاصيل أخرى..."),
                  ),
                ],
              ),
            )),

            SizedBox(height: 20),
            CustomButton(
  title: "متابعة",
  onPressed: () {
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
