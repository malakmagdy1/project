import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/setting_provider.dart';
import '../../../core/utils/app_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingProvider = Provider.of<SettingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          Row(
            children: [
              const Icon(Icons.light_mode),
              Switch(
                value: settingProvider.isDark(),
                onChanged: (value) {
                  if (value) {
                    settingProvider.enableDarkTheme();
                  } else {
                    settingProvider.enableLightTheme();
                  }
                },
              ),
              const Icon(Icons.dark_mode),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Text20 Example",
              style: AppFonts.text20.copyWith(
                color: settingProvider.isDark() ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Text18 Example",
              style: AppFonts.text18.copyWith(
                color: settingProvider.isDark() ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Text16 Example",
              style: AppFonts.text16.copyWith(
                color: settingProvider.isDark() ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Text13 Example",
              style: AppFonts.text13.copyWith(
                color: settingProvider.isDark() ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
