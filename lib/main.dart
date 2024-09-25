import 'package:flutter/material.dart';
import 'package:flutter_web_admin_panel_2/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/menu_app_controller.dart';
import 'core/theme/theme_notifier.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Admin Panel',
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: AppStyles.bgColor,
//         textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
//             .apply(bodyColor: Colors.white),
//         canvasColor: AppStyles.secondaryColor,
//       ),
//       home: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(
//             create: (context) => MenuAppController(),
//           ),
//         ],
//         child: MainScreen(),
//       ),
//     );
//   }
// }



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeNotifier(),  // Provide ThemeNotifier
        ),
        ChangeNotifierProvider(
          create: (context) => MenuAppController(),  // Provide MenuAppController
        ),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Admin Panel',
            theme: themeNotifier.currentTheme,  // Apply dynamic theme from ThemeNotifier
            home: MainScreen(),
          );
        },
      ),
    );
  }
}

