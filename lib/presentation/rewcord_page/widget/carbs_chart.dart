import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/theme_helper.dart';

class CurbsChart extends StatelessWidget {
  final String? date;
  const CurbsChart({super.key, this.date});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: getPadding(top: 24,),
      clipBehavior: Clip.antiAlias,
      margin: getMargin(top: 24, left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(getHorizontalSize(20)),
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
              date??'11-8',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: getPadding(left: 20),
            child: Text(
              'Carbs',
              style: TextStyle(
                color: appTheme.blueGray900,
                fontSize: getFontSize(22),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
                left: 26.34, right: 25.26, top: 10, bottom: 20),
            child: Divider(
              thickness: getSize(1.5),
              color: Color(0xFFE7E7E7),
            ),
          ),
          Container(
            height: getSize(230),
            child: SfCartesianChart(
              margin: EdgeInsets.all(0),
              backgroundColor: Colors.transparent,
              borderColor: Colors.transparent,
              borderWidth: 0,
              plotAreaBorderWidth: 0,
              // plotOffset: EdgeInsets.only(left: 20, right: 20),
              primaryXAxis: CategoryAxis(

                axisLine: AxisLine(
                  width: getSize(0),
                  color: Colors.transparent,
                ),
                  isVisible: true,
                majorGridLines: MajorGridLines(
                    color: Colors.transparent,width: getSize(0)
                ),
                // plotOffset:10,
                interval: 25,
                // isInversed:true,
                // minimum: 1,
              ),
              primaryYAxis: NumericAxis(
                  isVisible: false
              ),
              trackballBehavior: TrackballBehavior(
                  shouldAlwaysShow: true,

                  lineColor: Color(0xFF7C7C7C),

                  enable: true, // Enable trackball
                  activationMode: ActivationMode.singleTap,
                  lineType: TrackballLineType.none,
                  tooltipSettings: InteractiveTooltip(
                      connectorLineColor: Colors.red,
                      enable: true,
                      canShowMarker: false,
                      // borderColor: Colors.red,
                      borderRadius: getHorizontalSize(8),
                      format:
                      'point.y',
                      color: Colors.white,

                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w500,
                      )

                  ),
                  markerSettings: TrackballMarkerSettings(


                  )
              ),
              // series: <ChartSeries>[
              //
              //   SplineAreaSeries<ChartData, String>(
              //     dataSource: carbsChart,
              //     xValueMapper: (ChartData data, _) => data.category,
              //     yValueMapper: (ChartData data, _) => data.value,
              //     color: Color(0x33694ACD), // Line color
              //     borderColor: Color(0x66694ACD), // Border color
              //     borderWidth: getSize(2), // Border width
              //     // color: Colors.blue.withOpacity(0.3), // Area fill color
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}
