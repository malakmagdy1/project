import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/setting_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingProvider = Provider.of<SettingProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
