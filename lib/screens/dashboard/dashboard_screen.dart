import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_admin_panel_2/models/recent_file.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
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
                  child: Column(
                    children: [
                      CustomMyFiles(),
                      SizedBox(height: AppStyles.defaultPadding,),
                      CustomRecentFiles(),
                      if(Responsive.isMobile(context))
                        SizedBox(height: AppStyles.defaultPadding,),
                      if(Responsive.isMobile(context))
                        CustomStorageDetails()
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                  SizedBox(width: AppStyles.defaultPadding,),
                //on Mobile screen - < 850
                if(!Responsive.isMobile(context))
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



