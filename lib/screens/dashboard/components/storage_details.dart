
import 'package:flutter/cupertino.dart';
import 'package:flutter_web_admin_panel_2/screens/dashboard/components/storage_info_card.dart';

import '../../../constants.dart';
import 'chart.dart';

class CustomStorageDetails extends StatelessWidget {
  const CustomStorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Storage Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
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
