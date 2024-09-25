
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../core/theme/custom_colors.dart';
import '../../../models/recent_file.dart';

class CustomRecentFiles extends StatelessWidget {
  const CustomRecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Container(
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Files', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: customColors?.bodyPrimaryTextColor),),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: AppStyles.defaultPadding,
              columns: [
                DataColumn(
                    label: Text('File Name' , style: TextStyle(color: customColors?.bodyPrimaryTextColor),)
                ),
                DataColumn(
                    label: Text('Date', style: TextStyle(color: customColors?.bodyPrimaryTextColor))
                ),
                DataColumn(
                    label: Text('Size', style: TextStyle(color: customColors?.bodyPrimaryTextColor))
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                    (index) => customRecentFileDataRow(demoRecentFiles[index], customColors!.bodyPrimaryTextColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}


DataRow customRecentFileDataRow(RecentFile fileInfo, Color textColor){
  return DataRow(
      cells: [
        DataCell(
            Row(
              children: [
                SvgPicture.asset(
                  fileInfo.icon!,
                  height: 30,
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding),
                  child: Text(fileInfo.title!,  style: TextStyle(color: textColor)),
                ),
              ],
            )
        ),
        DataCell(Text(fileInfo.date!, style: TextStyle(color: textColor))),
        DataCell(Text(fileInfo.size!, style: TextStyle(color: textColor))),
      ]
  );
}