
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CustomStorageInfoCard extends StatelessWidget {
  const CustomStorageInfoCard({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numofFiles,
  });
  final String title, svgSrc, amountOfFiles;
  final int numofFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppStyles.defaultPadding),
      padding: EdgeInsets.all(AppStyles.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: AppStyles.primaryColor.withOpacity(0.15)),
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, maxLines: 1, overflow: TextOverflow.ellipsis,),
                    Text('$numofFiles Files', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70),),
                  ],
                ),
              )
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}
