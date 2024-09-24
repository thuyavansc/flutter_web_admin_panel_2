import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_admin_panel_2/controllers/menu_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              //This takes 1/6 of screen , flex default is 1
              //Left Sidebar
              child: CustomSideMenu(),
            ),
            Expanded(
              //This takes 5/6 of the screen
              flex: 5,
              child: DashboardScreen(),
            )
          ]
        ),
      ),
    );
  }
}
