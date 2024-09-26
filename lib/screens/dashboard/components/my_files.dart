
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_admin_panel_2/models/my_files.dart';

import '../../../constants.dart';
import '../../../config/theme/custom_colors.dart';
import '../../../responsive.dart';
import 'file_info_card.dart';

class CustomMyFiles extends StatelessWidget {
  const CustomMyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final customColors = Theme.of(context).extension<CustomColors>();

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Files', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: customColors!.bodyPrimaryTextColor),),
            //ElevatedButton.icon(onPressed: () {}, label: Text('Add New') , icon: Icon(Icons.add), style: TextButton.styleFrom( padding: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding*1.5, vertical: AppStyles.defaultPadding)), ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Add New', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
              icon: Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: AppStyles.defaultPadding * 1.5,
                    vertical:
                    AppStyles.defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
                backgroundColor: Theme.of(context).primaryColor, // Set the button background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // Small radius for square-like edges
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppStyles.defaultPadding,),
        Responsive(
          mobile: CustomFileInfoCardGridView(
            crossAxisCount: _size.width <650 ? 2:4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: CustomFileInfoCardGridView(),
          desktop: CustomFileInfoCardGridView(childAspectRatio: _size.width< 1400 ? 1.1 : 1.4,),
        )
        ,
      ],
    );
  }
}

class CustomFileInfoCardGridView extends StatelessWidget {
  const CustomFileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: AppStyles.defaultPadding,
          mainAxisSpacing: AppStyles.defaultPadding,
          childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => CustomFileInfoCard(info: demoMyFiles[index],),
    );
  }
}


