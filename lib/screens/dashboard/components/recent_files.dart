
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/recent_file.dart';

class CustomRecentFiles extends StatelessWidget {
  const CustomRecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Files', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: AppStyles.defaultPadding,
              columns: [
                DataColumn(
                    label: Text('File Name')
                ),
                DataColumn(
                    label: Text('Date')
                ),
                DataColumn(
                    label: Text('Size')
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                    (index) => customRecentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}


DataRow customRecentFileDataRow(RecentFile fileInfo){
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
                  child: Text(fileInfo.title!),
                ),
              ],
            )
        ),
        DataCell(Text(fileInfo.date!)),
        DataCell(Text(fileInfo.size!)),
      ]
  );
}