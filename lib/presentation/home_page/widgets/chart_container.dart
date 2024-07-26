
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';

class ChartContainer extends StatefulWidget {
  final String? date;
  const ChartContainer({super.key, this.date});

  @override
  State<ChartContainer> createState() => _ChartContainerState();
}

class _ChartContainerState extends State<ChartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(top: 24, bottom: 24.29),
      margin: getMargin(top: 24, left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(getHorizontalSize(20)),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 13,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(left: 20),
            child: Text(
              widget.date??'Week',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: getPadding(left: 20),
                  child: Text(
                    'Glucose',
                    style: TextStyle(
                      color: appTheme.blueGray900,
                      fontSize: getFontSize(22),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                height: getSize(8),
                width: getSize(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF62B47F)),
              ),
              Padding(
                padding: getPadding(left: 8),
                child: Text(
                  'Before meal',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: getFontSize(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(left: 25, right: 8),
                child: Container(
                  height: getSize(8),
                  width: getSize(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF694ACD)),
                ),
              ),
              Padding(
                padding: getPadding(right: 16),
                child: Text(
                  'After meal',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: getFontSize(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(left: 26.34, right: 25.26, top: 10, bottom: 20),
            child: Divider(
              thickness: getSize(1.5),
              color: Color(0xFFE7E7E7),
            ),
          ),
          Container(
            height: getSize(230), // Adjust the height as needed
            child: SfCartesianChart(

              backgroundColor: Colors.transparent,
              borderColor: Colors.transparent,
              borderWidth: 0,
              plotAreaBorderWidth: 0,
              primaryXAxis: CategoryAxis(
                majorGridLines: MajorGridLines(width: 0),
                // Remove major gridlines
                // minorGridLines: MinorGridLines(width: 0),
                minimum: 0,


              ),
              primaryYAxis: NumericAxis(

                desiredIntervals: 3,
                axisLine: AxisLine(width: 0),
              ),
              trackballBehavior: TrackballBehavior(
                shouldAlwaysShow: true,
              lineColor: Color(0xFF7C7C7C),
                lineDashArray: [8],
                enable: true, // Enable trackball
                activationMode: ActivationMode.singleTap,
                  lineType: TrackballLineType.vertical,

                  tooltipSettings: InteractiveTooltip(
                    enable: true,
                    canShowMarker: true,
                    format: 'point.x : point.y',
                  ),
                markerSettings: TrackballMarkerSettings(

                )
              ),

              // series: <ChartSeries>[
              //   SplineSeries<Data, String>(
              //     dataSource: <Data>[
              //       Data('Su', 101),
              //       Data('Mo', 78),
              //       Data('Tu', 63),
              //       Data('We', 127),
              //       Data('Th', 127),
              //       Data('Fr', 110),
              //       Data('Sa', 75),
              //     ],
              //     width: getSize(3),
              //     color: Color(0xFF04B155),
              //     xValueMapper: (Data data, _) => data.month,
              //     yValueMapper: (Data data, _) => data.value,
              //     name: 'Spline Series',
              //     splineType: SplineType.natural,
              //
              //
              //     // Show markers
              //
              //     // dataLabelSettings: DataLabelSettings(isVisible: false),
              //
              //     // isVisible: false
              //   ),
              //   SplineSeries<Data, String>(
              //     dataSource: <Data>[
              //       Data('Su', 60),
              //       Data('Mo', 90),
              //       Data('Tu', 65),
              //       Data('We', 55),
              //       Data('Th', 75),
              //       Data('Fr', 78),
              //       Data('Sa', 52),
              //     ],
              //     color: Color(0xFF694ACD),
              //
              //     width: getSize(3),
              //     xValueMapper: (Data data, _) => data.month,
              //     yValueMapper: (Data data, _) => data.value,
              //     name: 'Line Series',
              //     splineType: SplineType.natural,
              //
              //     // trendlines: <Trendline>[
              //     //   Trendline(
              //     //       // type: TrendlineType.linear,
              //     //       color: Colors.red,
              //     //     width: 1,
              //     //     legendIconType: LegendIconType.verticalLine,
              //     //     isVisible: true,isVisibleInLegend: true,
              //     //
              //     //   )
              //     // ]
              //     // dataLabelSettings: DataLabelSettings(isVisible: false),
              //     // markerSettings:
              //     //     MarkerSettings(isVisible: true, color: Colors.red)),
              //   ),
              //
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
