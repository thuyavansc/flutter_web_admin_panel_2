import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_admin_panel_2/controllers/menu_app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

//1-Old
// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: context.read<MenuAppController>().scaffoldKey,
//       drawer: CustomSideMenu(),
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if(Responsive.isDesktop(context))
//               //Side menu show only for large screen
//               Expanded(
//               //This takes 1/6 of screen , flex default is 1
//               //Left Sidebar
//               child: CustomSideMenu(),
//               ),
//             Expanded(
//               //This takes 5/6 of the screen
//               flex: 5,
//               child: DashboardScreen(),
//             )
//           ]
//         ),
//       ),
//     );
//   }
// }


//2-New for menu hide and show
// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: context.read<MenuAppController>().scaffoldKey,
//       drawer: CustomSideMenu(), // Drawer for small screens
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Conditionally render the side menu based on desktop view and the visibility state
//             if (Responsive.isDesktop(context) && context.watch<MenuAppController>().isSideMenuVisible)
//               Expanded(
//                 // Side menu takes 1/6 of the screen
//                 child: CustomSideMenu(),
//               ),
//             Expanded(
//               // This takes the remaining 5/6 of the screen
//               flex: 5,
//               child: DashboardScreen(),  // Dashboard includes the existing header and content
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// for drawer hide when screen change
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final menuController = context.read<MenuAppController>();

    if (menuController != null && Responsive.isDesktop(context)) {
      // If the drawer is open, close it when transitioning to desktop
      if (menuController.scaffoldKey.currentState?.isDrawerOpen ?? false) {
        Navigator.of(context).pop();  // This will close the drawer
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: CustomSideMenu(), // Drawer for small screens
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Conditionally render the side menu based on desktop view and visibility state
            if (Responsive.isDesktop(context) && context.watch<MenuAppController>().isSideMenuVisible)
              Expanded(
                child: CustomSideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),  // Dashboard includes the existing header and content
            ),
          ],
        ),
      ),
    );
  }
}