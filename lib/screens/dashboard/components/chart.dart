
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
          children: [
            PieChart(
                PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 70,
                    startDegreeOffset: -90,
                    sections: pieChartSelectionDatas
                )
            ),
            Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: AppStyles.defaultPadding,),
                    Text('29.1', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.w600, height: 0.5),),
                    SizedBox(height: AppStyles.defaultPadding/2,),
                    Text('of 128GB'),
                  ],
                )
            ),
          ]
      ),
    );
  }
}


var pieChartSelectionDatas = [
  PieChartSectionData(color: AppStyles.primaryColor, value: 25, showTitle: false, radius: 25),
  PieChartSectionData(color: Color(0xFF26E5EF), value: 20, showTitle: false, radius: 22),
  PieChartSectionData(color: Color(0xFFFFCF26), value: 10, showTitle: false, radius: 19),
  PieChartSectionData(color: Color(0xFFEE2727), value: 15, showTitle: false, radius: 16),
  PieChartSectionData(color: AppStyles.primaryColor.withOpacity(0.1), value: 25, showTitle: false, radius: 13),
];
