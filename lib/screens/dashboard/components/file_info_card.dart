
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../core/theme/custom_colors.dart';
import '../../../models/my_files.dart';

class CustomFileInfoCard extends StatelessWidget {
  const CustomFileInfoCard({
    super.key,
    required this.info,
  });

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();

    return Container(
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
          color: AppStyles.secondaryColor,
          //color: customColors?.cardPrimaryBgColor.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(AppStyles.defaultPadding*0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color?.withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: SvgPicture.asset(info.svgSrc!, color: info.color,),
              ),
              Icon(Icons.more_vert, color: customColors?.bodyPrimaryTextColor, )
            ],
          ),
          Text(info.title!, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: customColors?.bodyPrimaryTextColor)),
          CustomProgressLine(info: info),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${info.numOfFiles} Files', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: customColors?.bodyPrimaryTextColor),),
              Text(info.totalStorage!, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: customColors?.bodyPrimaryTextColor),),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomProgressLine extends StatelessWidget {
  const CustomProgressLine({
    super.key,
    required this.info,
  });

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 5,
            decoration: BoxDecoration(
                color: info.color!.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          LayoutBuilder(builder: (context, constraints) => Container(
            width: constraints.maxHeight * (info.percentage!/100),
            height: 5,
            decoration: BoxDecoration(
                color: info.color!,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          ),
        ]
    );
  }
}