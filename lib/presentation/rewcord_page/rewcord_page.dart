import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/home_page/widgets/chart_container.dart';
import 'package:diabetes_control_app/presentation/rewcord_page/widget/carbs_chart.dart';
import 'package:diabetes_control_app/presentation/rewcord_page/widget/insulin_chart.dart';
import 'package:flutter/material.dart';
import 'controller/rewcord_controller.dart';


// ignore_for_file: must_be_immutable
class RecordPage extends GetWidget<RecordController> {
   RecordPage({super.key});

  RecordController controller = Get.put(RecordController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          AppBarText(
            text: 'My Records',
          ),
          Divider(
            thickness: getSize(1.5),
            color: appTheme.gray90014,
          ),
          Expanded(
              child: GetBuilder<RecordController>(builder: (controller) {
                return ListView(
                  // shrinkWrap: true,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start, children: [
                      GestureDetector(
                          onTap: () {
                            onTapDetails();
                          },
                          child: Container(
                              padding: getPadding(
                                  left: 16, top: 18, right: 16, bottom: 18),
                              margin: getMargin(left: 16, right: 16, top: 24),
                              decoration: BoxDecoration(
                                color: Color(0xFFF8F8F8),
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12)),

                              ),

                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 2),
                                        child: Obx(() =>
                                            Text(
                                                controller.dateTxt
                                                    .value.isEmpty
                                                    ? 'Select Date '
                                                    : controller.dateTxt
                                                    .value,
                                                style: theme.textTheme
                                                    .bodyLarge))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ]))),
                      Obx(() {
                        return ChartContainer(
                          date: controller.dateTxt
                              .value.isEmpty ? '11-8' : controller.dateTxt.value,
                        );
                      }),
                      Obx(() {
                        return InsulinChart(
                          date: controller.dateTxt
                              .value.isEmpty ? '11-8' : controller.dateTxt
                              .value,
                        );
                      }),
                      Obx(() {
                        return CurbsChart(
                          date: controller.dateTxt
                              .value.isEmpty ? '11-8' : controller.dateTxt
                              .value,
                        );
                      }),


                    ])
                  ],
                );
              }, init: RecordController(),)
          )
        ]));
  }

  Future<void> onTapDetails() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.selectedDateTxt!.value,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Color(0xFF62B47F), // <-- SEE HERE
                  onPrimary: Colors.black, // <-- SEE HERE
                  onSurface: Colors.black // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  iconColor: Colors.red,
                  // button text color
                ),
              ),
              unselectedWidgetColor: appTheme.greenA700,
            ),
            child: child!,
          );
        },
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime
                .now()
                .year, DateTime
            .now()
            .month, DateTime
            .now()
            .day));
    if (dateTime != null) {
      controller.selectedDateTxt!.value = dateTime;
      controller.dateTxt.value =
          dateTime.format(SHORT_DATE_WITH_FULL_YEAR);
    }
  }
}

class ChartData {
  final String category;
  final double value;
  bool isSelected;

  ChartData(this.category, this.value, {this.isSelected = false});
}

class ChartDataS {
  final String category;
  final double lowValue;
  final double highValue;

  ChartDataS(this.category, this.lowValue, this.highValue);
}

final List<ChartDataS> chartDataS = [
  ChartDataS('10', 10, 10),
  ChartDataS('25', 25, 25),
  ChartDataS('50', 50, 50),
  ChartDataS('75', 75, 15),
  ChartDataS('100', 100, 100),
];
final List<ChartData> chartData = [
  ChartData('A', 30),
  ChartData('B', 40),
  ChartData('C', 25),
  ChartData('D', 60),
  ChartData('E', 45),
];
final List<ChartData> chartData2 = [
  ChartData('A', 20),
  ChartData('B', 30),
  ChartData('C', 15),
  ChartData('D', 40),
  ChartData('E', 35),
];

final List<ChartData> carbsChart = [

  ChartData('0', 35),
  ChartData('1', 35),
  ChartData('2', 39),
  ChartData('3', 32),
  ChartData('4', 45),
  ChartData('5', 49),
  ChartData('6', 52),
  ChartData('7', 88),
  ChartData('8', 82),
  ChartData('9', 90),
  ChartData('10', 45),
  ChartData('11', 40),
  ChartData('12', 65),
  ChartData('13', 30),
  ChartData('14', 44),
  ChartData('15', 56),
  ChartData('16', 92),
  ChartData('17', 87),
  ChartData('18', 98),
  ChartData('19', 99),
  ChartData('20', 55),
  ChartData('21', 89),
  ChartData('22', 45),
  ChartData('23', 85),
  ChartData('24', 48),
  ChartData('25', 99),
  ChartData('26', 82),
  ChartData('27', 89),
  ChartData('28', 79),
  ChartData('29', 90),
  ChartData('30', 50),
  ChartData('31', 100),
  ChartData('32', 111),
  ChartData('33', 100),
  ChartData('34', 48),
  ChartData('35', 91),
  ChartData('36', 52),
  ChartData('37', 68),
  ChartData('38', 17),
  ChartData('39', 79),
  ChartData('40', 95),
  ChartData('41', 110),
  ChartData('42', 115),
  ChartData('43', 103),
  ChartData('44', 104),
  ChartData('45', 89),
  ChartData('46', 102),
  ChartData('47', 138),
  ChartData('48', 150),
  ChartData('49', 119),
  ChartData('50', 95),
  ChartData('51', 101),
  ChartData('52', 105),
  ChartData('53', 113),
  ChartData('54', 104),
  ChartData('55', 92),
  ChartData('56', 112),
  ChartData('57', 108),
  ChartData('58', 107),
  ChartData('59', 109),
  ChartData('60', 125),
  ChartData('61', 105),
  ChartData('62', 111),
  ChartData('63', 131),
  ChartData('64', 100),
  ChartData('65', 89),
  ChartData('66', 82),
  ChartData('67', 89),
  ChartData('68', 117),
  ChartData('69', 95),
  ChartData('70', 125),
  ChartData('71', 110),
  ChartData('72', 125),
  ChartData('73', 135),
  ChartData('74', 94),
  ChartData('75', 96),
  ChartData('76', 112),
  ChartData('77', 118),
  ChartData('78', 117),
  ChartData('79', 98),
  ChartData('80', 125),
  ChartData('81', 110),
  ChartData('82', 115),
  ChartData('83', 113),
  ChartData('84', 104),
  ChartData('85', 90),
  ChartData('86', 132),
  ChartData('87', 18),
  ChartData('88', 107),
  ChartData('89', 108),
  ChartData('90', 125),
  ChartData('90', 125),
  ChartData('91', 101),
  ChartData('92', 115),
  ChartData('93', 133),
  ChartData('94', 124),
  ChartData('95', 96),
  ChartData('96', 82),
  ChartData('97', 135),
  ChartData('98', 117),
  ChartData('99', 99),
  ChartData('100', 125),

];
