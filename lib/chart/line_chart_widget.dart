import 'package:bmi_new_design/chart/line_titles.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
    LineChartData(
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 12,
      titlesData: LineTitles.getTitleData(),
      gridData: FlGridData(
        show: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(

            strokeWidth: 0,
          );
        },


      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d), width: 1),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 2),
            FlSpot(8, 4),


          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          // dotData: FlDotData(show: false),
        /*  belowBarData: BarAreaData(
            show: true,
            colors: gradientColors
                .map((color) => color.withOpacity(0.3))
                .toList(),
          ),*/
        ),
      ],
    ),
  );
}