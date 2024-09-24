import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/header.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppStyles.defaultPadding),
        child: Column(
          children: [
            CustomHeader(),
            SizedBox(height: AppStyles.defaultPadding,),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: AppStyles.defaultPadding,),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    color: AppStyles.primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


