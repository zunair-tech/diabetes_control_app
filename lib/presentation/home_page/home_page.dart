import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/home_page/models/bottom_sheet_list.dart';
import 'package:diabetes_control_app/presentation/home_page/widgets/chart_container.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../home_page/widgets/categorystack_item_widget.dart';
import 'controller/home_controller.dart';

// ignore_for_file: must_be_immutable
class HomePage extends GetWidget<HomeController>  {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());
  final List<FlSpot> line1Data = [
    FlSpot(0, 60),
    FlSpot(1, 40),
    FlSpot(2, 70),
    FlSpot(3, 50),
    FlSpot(4, 80),
    FlSpot(5, 70),
  ];

  final List<FlSpot> line2Data = [
    FlSpot(0, 40),
    FlSpot(1, 30),
    FlSpot(2, 60),
    FlSpot(3, 40),
    FlSpot(4, 70),
    FlSpot(5, 60),
  ];
  final List<String> weekdayNames = [
    'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Column(children: [
      Padding(
        padding: getPadding(left: 16, right: 16, bottom: 16,top: 16),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Hello, \nCliff 👋',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: getFontSize(24),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                color: Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getHorizontalSize(8))),
              ),
              child: Padding(
                padding: getPadding(all: 7.78),
                child: CustomImageView(
                  svgPath: ImageConstant.imgLock,
                  height: getSize(24),
                  width: getSize(24),
                  alignment: Alignment.center,
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                padding: getPadding(all: 16),
                margin: getMargin(left: 16, right: 16),
                decoration: AppDecoration.fillGray100
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: getSize(77),
                        lineWidth: getSize(10),
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: controller.bloodSugar,
                        reverse: false,
                        center: CircularPercentIndicator(
                          radius: getSize(58),
                          lineWidth: getSize(10),
                          circularStrokeCap: CircularStrokeCap.round,
                          percent: controller.glycemic,
                          reverse: false,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${controller.glycemic * 100.toInt()}',
                                  style: TextStyle(
                                    color: appTheme.blueGray900,
                                    fontWeight: FontWeight.w700,
                                    fontSize: getFontSize(18),
                                  )),
                              Text('118/${controller.bloodSugar * 100.toInt()}',
                                  style: TextStyle(
                                    color: Color(0xFF62B47F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: getFontSize(16),
                                  )),
                            ],
                          ),
                          progressColor: Color(0xFF694ACD),
                          backgroundColor: appTheme.gray90014,
                        ),
                        progressColor: Color(0xFF62B47F),
                        backgroundColor: appTheme.gray90014,
                      ),
                      Expanded(
                        child: Padding(
                            padding: getPadding(left: 30, top: 40, bottom: 37),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin: getMargin(top: 1, bottom: 4),
                                            decoration: BoxDecoration(
                                                color: theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(3)))),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Text("lbl_blood_sugar".tr,
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900))
                                      ]),
                                  Padding(
                                      padding: getPadding(top: 21),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin:
                                                    getMargin(top: 1, bottom: 4),
                                                decoration: BoxDecoration(
                                                    color: appTheme.deepPurple400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3)))),
                                            Padding(
                                                padding: getPadding(left: 16),
                                                child: Text(
                                                    "lbl_glycemic_load".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBluegray900))
                                          ],
                                      ),)

                                ],
                            ),),
                      ),

                    ],
                ),
            ),
            categories(),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetList();
                    },
                  );
                },
                child: ChartContainer(),
            ),
          ],
        ),
      )
    ]);
  }

  Widget categories() {
    return Padding(
        padding: getPadding(top: 24, left: 16, right: 16),
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: getSize(94),
                  crossAxisCount: 2,
                  mainAxisSpacing: getHorizontalSize(24),
                  crossAxisSpacing: getHorizontalSize(15)),
              physics: NeverScrollableScrollPhysics(),
              children: [
                CategoriesItemWidget(
                  icon: ImageConstant.imgApple1,
                  iconBack: Color(0xFF4E4FDC),
                  backColor: Color(0xFFE8E8FF),
                  categoriesName: 'Carbs',
                  number: '522',
                  types: ' calories',
                  onTapCategorystack: () {

                  },
                ),
                CategoriesItemWidget(
                  icon: ImageConstant.imgSPill,
                  iconBack: Color(0xFF5F619D),
                  backColor: Color(0xFFE8E8FF),
                  categoriesName: 'Pills',
                  number: '0${controller.pillCount}',
                  types: ' taken',
                  onTapCategorystack: () {
                    Get.toNamed(
                      AppRoutes.pillsScreen,
                    );
                  },
                ),
                CategoriesItemWidget(
                  icon: ImageConstant.imgSGlucose,
                  iconBack: Color(0xFFD75A58),
                  backColor: Color(0xFFFEF3EC),
                  categoriesName: 'Glucose',
                  number: controller.glucose.toString(),
                  types: ' mg/dl',
                  onTapCategorystack: () {
                    Get.toNamed(
                      AppRoutes.glucoseScreen,
                    );
                  },
                ),
                CategoriesItemWidget(
                  icon: ImageConstant.imgSInsulin,
                  iconBack: Color(0xFF2A8BB5),
                  backColor: Color(0xFFF2F7FB),
                  categoriesName: 'Insulin',
                  number: controller.insulin.toString(),
                  types: ' mg/dl',
                  onTapCategorystack: () {
                    Get.toNamed(
                      AppRoutes.insulinScreen,
                    );
                  },
                ),
              ],
            );
          },
          init: HomeController(),
        ));
  }

  onTapCategorystack() {
    Get.toNamed(
      AppRoutes.glucoseScreen,
    );
  }
}

class Data {
  Data(this.month, this.value);

  final String month;
  final double value;
}
