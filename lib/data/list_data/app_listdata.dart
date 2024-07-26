import 'dart:ui';

import '../../core/utils/image_constant.dart';
import '../../presentation/glucose_screen/models/chipviewbefore_item_model.dart';
import '../../presentation/home_page/models/categorystack_item_model.dart';
import '../../presentation/my_meal_page/models/my_meal_model.dart';
import '../../presentation/search_one_screen/models/search_one_model.dart';

class AppListData{


  static List<CategorystackItemModel> homeCategorisList =[
    CategorystackItemModel(
      icon: ImageConstant.imgApple1,
      iconBack: Color(0xFF4E4FDC),
      backColor: Color(0xFFE8E8FF),
      categoriesName: 'Carbs',
      number: '522',
      types: ' calories',
    ),
    CategorystackItemModel(
      icon: ImageConstant.imgSPill,
      iconBack: Color(0xFF5F619D),
      backColor: Color(0xFFE8E8FF),
      categoriesName: 'Pills',
      number: '01',
      types: ' taken',
    ),
    CategorystackItemModel(
      icon: ImageConstant.imgSGlucose,
      iconBack: Color(0xFFD75A58),
      backColor: Color(0xFFFEF3EC),
      categoriesName: 'Glucose',
      number: '150',
      types: ' mg/dl',
    ),
    CategorystackItemModel(
      icon: ImageConstant.imgSInsulin,
      iconBack: Color(0xFF2A8BB5),
      backColor: Color(0xFFF2F7FB),
      categoriesName: 'Insulin',
      number: '150',
      types: ' mg/dl',
    ),

  ];
  static List<ChipviewbeforeItemModel> timeBase =[

    ChipviewbeforeItemModel(
      time: 'Before meal',
    ),
    ChipviewbeforeItemModel(
      time: 'After meal'
    ),
  ];

  static List<SearchOneModel> medicineList =[
      SearchOneModel(
      img: ImageConstant.imgMed,
        medicineName: 'Jardiance',
        medicineCount: '30 tablet',
      ),
    SearchOneModel(
      img: ImageConstant.imgMed,
      medicineName: 'Metformin',
      medicineCount: '15 tablet',
    ),
    SearchOneModel(
      img: ImageConstant.imgMed,
      medicineName: 'Glimepiride',
      medicineCount: '6 tablet',
    ),
    SearchOneModel(
      img: ImageConstant.imgMed,
      medicineName: 'Glipizide',
      medicineCount: '20 tablet',
    ),
    SearchOneModel(
      img: ImageConstant.imgMed,
      medicineName: 'Invokana',
      medicineCount: '30 tablet',
    ),
    SearchOneModel(
      img: ImageConstant.imgMed,
      medicineName: 'Jardiance',
      medicineCount: '15 tablet',
    ),


  ];

  static List<MyMealModel> myMealList() {
    return [
      MyMealModel(
        img: ImageConstant.mmBanana,
        name: 'Banana (fresh)',
        quantity: '3.6 GL',
      ),
      MyMealModel(
        img: ImageConstant.mmBread,
        name: 'Bread',
        quantity: '20 GL',
      ),
      MyMealModel(
        img: ImageConstant.mmLime,
        name: 'Lime soda',
        quantity: '5.0 GL',
      ),
      MyMealModel(
        img: ImageConstant.mmTea,
        name: 'Green Tea',
        quantity: '6.0 GL',
      ),
      MyMealModel(
        img: ImageConstant.mmRice,
        name: 'Rice',
        quantity: '20 GL',
      )
    ];
  }
}