import 'package:flutter/material.dart';
import 'package:project/main.dart';

class ThemeToggle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Theme.of(context).brightness == Brightness.dark,
      onChanged: (value) {
        ThemeMode themeMode = value ? ThemeMode.dark : ThemeMode.light;
        MyApp.of(context)?.setThemeMode(themeMode);
      },
    );
  }
}
