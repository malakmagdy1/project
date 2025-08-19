import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart' as AppTheme;
import 'core/theme/setting_provider.dart';
import 'features/home/presentation/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingProvider>(
      builder: (context, settingProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: settingProvider.isDark()
              ? ThemeMode.dark
              : ThemeMode.light,
          home: const HomePage(),
        );
      },
    );
  }
}
