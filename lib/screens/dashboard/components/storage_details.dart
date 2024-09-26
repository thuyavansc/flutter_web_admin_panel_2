
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_admin_panel_2/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import '../../../config/theme/custom_colors.dart';
import 'chart.dart';

class CustomStorageDetails extends StatelessWidget {
  const CustomStorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Storage Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: customColors?.bodyPrimaryTextColor),),
          SizedBox(height: AppStyles.defaultPadding,),
          CustomChart(),
          CustomStorageInfoCard(svgSrc: 'icons/Documents.svg', title: 'Documents Files', amountOfFiles: '1.3GB', numofFiles: 1238,),
          CustomStorageInfoCard(svgSrc: 'icons/media.svg', title: 'Media Files', amountOfFiles: '15.3GB', numofFiles: 1238,),
          CustomStorageInfoCard(svgSrc: 'icons/folder.svg', title: 'Other Files', amountOfFiles: '1.3GB', numofFiles: 1238,),
          CustomStorageInfoCard(svgSrc: 'icons/unknown.svg', title: 'Unknown Files', amountOfFiles: '15.3GB', numofFiles: 140,),
        ],
      ),
    );
  }
}
