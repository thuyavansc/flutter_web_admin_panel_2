import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  bool isSideMenuVisible = true;

  // Method to control opening the drawer for mobile/tablet
  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  // Method to toggle the desktop side menu visibility
  void toggleSideMenu() {
    isSideMenuVisible = !isSideMenuVisible;
    notifyListeners();
  }
}
