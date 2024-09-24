
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_admin_panel_2/models/my_files.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class CustomMyFiles extends StatelessWidget {
  const CustomMyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Files', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
            //ElevatedButton.icon(onPressed: () {}, label: Text('Add New') , icon: Icon(Icons.add), style: TextButton.styleFrom( padding: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding*1.5, vertical: AppStyles.defaultPadding)), ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Add New', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
              icon: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: AppStyles.defaultPadding * 1.5,
                    vertical: AppStyles.defaultPadding
                ),
                backgroundColor: AppStyles.primaryColor, // Set the button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Small radius for square-like edges
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppStyles.defaultPadding,),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: AppStyles.defaultPadding,
              childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => CustomFileInfoCard(info: demoMyFiles[index],),
        ),
      ],
    );
  }
}


