

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/custom_colors.dart';
import '../../settings/settings_screen.dart';

class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Drawer(
      backgroundColor:customColors?.headerBackgroundColor,
      // for enable scrolling
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset('images/logo.png')
            ),
            CustomDrawerListTile(
              title: 'Dashboard',
              svgSrc: 'icons/menu_dashboard.svg',
              press: () {
                print('Dashboard');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
            CustomDrawerListTile(
              title: 'Transaction',
              svgSrc: 'icons/menu_tran.svg',
              press: () { print('Transaction'); },
            ),
            CustomDrawerListTile(
              title: 'Task',
              svgSrc: 'icons/menu_task.svg',
              press: () { print('Transaction'); },
            ),
            CustomDrawerListTile(
              title: 'Documents',
              svgSrc: 'icons/menu_doc.svg',
              press: () { print('Documents'); },
            ),
            CustomDrawerListTile(
              title: 'Store',
              svgSrc: 'icons/menu_store.svg',
              press: () { print('Store'); },
            ),
            CustomDrawerListTile(
              title: 'Notification',
              svgSrc: 'icons/menu_notification.svg',
              press: () { print('Notification'); },
            ),
            CustomDrawerListTile(
              title: 'Profile',
              svgSrc: 'icons/menu_profile.svg',
              press: () { print('Profile'); },
            ),
            CustomDrawerListTile(
              title: 'Settings',
              svgSrc: 'icons/menu_setting.svg',
              press: () { print('Settings'); },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });
  final String title,svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      onTap: press,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white54
        ),
      ),
      //hoverColor: Colors.blue[200],
      //focusColor: Colors.grey,
    );
  }
}
