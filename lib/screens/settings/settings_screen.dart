
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/theme/app_themes.dart';
import '../../core/theme/theme_notifier.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          ListTile(
            title: Text('Blue Theme'),
            onTap: () {
              context.read<ThemeNotifier>().switchTheme(AppThemes.blueTheme);  // Switch to Blue Theme
            },
          ),
          ListTile(
            title: Text('Green Theme'),
            onTap: () {
              context.read<ThemeNotifier>().switchTheme(AppThemes.greenTheme);  // Switch to Green Theme
            },
          ),
          ListTile(
            title: Text('Dark Theme'),
            onTap: () {
              context.read<ThemeNotifier>().switchTheme(AppThemes.thirdTheme);  // Switch to Dark Theme
            },
          ),
          ListTile(
            title: Text('4th Theme'),
            onTap: () {
              context.read<ThemeNotifier>().switchTheme(AppThemes.fourthTheme);  // Switch to Dark Theme
            },
          ),
          ListTile(
            title: Text('5th Theme'),
            onTap: () {
              context.read<ThemeNotifier>().switchTheme(AppThemes.fifthTheme);  // Switch to Dark Theme
            },
          ),
        ],
      ),
    );
  }
}
