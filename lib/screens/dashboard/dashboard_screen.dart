import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';


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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: CustomMyFiles(),
                ),
                SizedBox(width: AppStyles.defaultPadding,),
                Expanded(
                  flex: 2,
                  child: CustomStorageDetails(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




