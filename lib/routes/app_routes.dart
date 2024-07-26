import 'package:diabetes_control_app/presentation/home_page/binding/home_page_binding.dart';
import 'package:diabetes_control_app/presentation/home_page/home_page.dart';
import 'package:diabetes_control_app/presentation/my_meal_page/binding/my_meal_binding.dart';
import 'package:diabetes_control_app/presentation/my_meal_page/my_meal_page.dart';
import 'package:diabetes_control_app/presentation/profile_page/binding/profile_page_binding.dart';
import 'package:diabetes_control_app/presentation/profile_page/profile_page.dart';
import 'package:diabetes_control_app/presentation/rewcord_page/binding/reacord_binding.dart';
import 'package:diabetes_control_app/presentation/rewcord_page/rewcord_page.dart';
import 'package:diabetes_control_app/presentation/splash_screen/splash_screen.dart';
import 'package:diabetes_control_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:diabetes_control_app/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:diabetes_control_app/presentation/splash_one_screen/binding/splash_one_binding.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/basic_details_screen.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/binding/basic_details_binding.dart';
import 'package:diabetes_control_app/presentation/gender_screen/gender_screen.dart';
import 'package:diabetes_control_app/presentation/gender_screen/binding/gender_binding.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_screen/diabetes_type_screen.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_screen/binding/diabetes_type_binding.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_selected_screen/diabetes_type_selected_screen.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_selected_screen/binding/diabetes_type_selected_binding.dart';
import 'package:diabetes_control_app/presentation/therapy_type_screen/therapy_type_screen.dart';
import 'package:diabetes_control_app/presentation/therapy_type_screen/binding/therapy_type_binding.dart';
import 'package:diabetes_control_app/presentation/measurement_unit_type_screen/measurement_unit_type_screen.dart';
import 'package:diabetes_control_app/presentation/measurement_unit_type_screen/binding/measurement_unit_type_binding.dart';
import 'package:diabetes_control_app/presentation/sugar_goals_screen/sugar_goals_screen.dart';
import 'package:diabetes_control_app/presentation/sugar_goals_screen/binding/sugar_goals_binding.dart';
import 'package:diabetes_control_app/presentation/glucose_level_screen/glucose_level_screen.dart';
import 'package:diabetes_control_app/presentation/glucose_level_screen/binding/glucose_level_binding.dart';
import 'package:diabetes_control_app/presentation/basic_details_one_screen/basic_details_one_screen.dart';
import 'package:diabetes_control_app/presentation/basic_details_one_screen/binding/basic_details_one_binding.dart';
import 'package:diabetes_control_app/presentation/details_upload_success_screen/details_upload_success_screen.dart';
import 'package:diabetes_control_app/presentation/details_upload_success_screen/binding/details_upload_success_binding.dart';
import 'package:diabetes_control_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:diabetes_control_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:diabetes_control_app/presentation/log_in_with_error_screen/log_in_with_error_screen.dart';
import 'package:diabetes_control_app/presentation/log_in_with_error_screen/binding/log_in_with_error_binding.dart';
import 'package:diabetes_control_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:diabetes_control_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:diabetes_control_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:diabetes_control_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:diabetes_control_app/presentation/verification_screen/verification_screen.dart';
import 'package:diabetes_control_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:diabetes_control_app/presentation/verification_with_error_screen/verification_with_error_screen.dart';
import 'package:diabetes_control_app/presentation/verification_with_error_screen/binding/verification_with_error_binding.dart';
import 'package:diabetes_control_app/presentation/reset_passsword_screen/reset_passsword_screen.dart';
import 'package:diabetes_control_app/presentation/reset_passsword_screen/binding/reset_passsword_binding.dart';
import 'package:diabetes_control_app/presentation/reset_passsword_success_screen/reset_passsword_success_screen.dart';
import 'package:diabetes_control_app/presentation/reset_passsword_success_screen/binding/reset_passsword_success_binding.dart';
import 'package:diabetes_control_app/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:diabetes_control_app/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:diabetes_control_app/presentation/quick_add_pop_up_screen/quick_add_pop_up_screen.dart';
import 'package:diabetes_control_app/presentation/quick_add_pop_up_screen/binding/quick_add_pop_up_binding.dart';
import 'package:diabetes_control_app/presentation/glucose_screen/glucose_screen.dart';
import 'package:diabetes_control_app/presentation/glucose_screen/binding/glucose_binding.dart';
import 'package:diabetes_control_app/presentation/pills_screen/pills_screen.dart';
import 'package:diabetes_control_app/presentation/pills_screen/binding/pills_binding.dart';
import 'package:diabetes_control_app/presentation/search_one_screen/search_one_screen.dart';
import 'package:diabetes_control_app/presentation/search_one_screen/binding/search_one_binding.dart';
import 'package:diabetes_control_app/presentation/insulin_screen/insulin_screen.dart';
import 'package:diabetes_control_app/presentation/insulin_screen/binding/insulin_binding.dart';
import 'package:diabetes_control_app/presentation/insulin_with_dropdown_screen/insulin_with_dropdown_screen.dart';
import 'package:diabetes_control_app/presentation/insulin_with_dropdown_screen/binding/insulin_with_dropdown_binding.dart';
import 'package:diabetes_control_app/presentation/insulin_change_measure_screen/insulin_change_measure_screen.dart';
import 'package:diabetes_control_app/presentation/insulin_change_measure_screen/binding/insulin_change_measure_binding.dart';
import 'package:diabetes_control_app/presentation/search_screen/search_screen.dart';
import 'package:diabetes_control_app/presentation/search_screen/binding/search_binding.dart';
import 'package:diabetes_control_app/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:diabetes_control_app/presentation/search_result_one_screen/binding/search_result_one_binding.dart';
import 'package:diabetes_control_app/presentation/add_meal_screen/add_meal_screen.dart';
import 'package:diabetes_control_app/presentation/add_meal_screen/binding/add_meal_binding.dart';
import 'package:diabetes_control_app/presentation/add_meal_one_screen/add_meal_one_screen.dart';
import 'package:diabetes_control_app/presentation/add_meal_one_screen/binding/add_meal_one_binding.dart';
import 'package:diabetes_control_app/presentation/product_details_screen/product_details_screen.dart';
import 'package:diabetes_control_app/presentation/product_details_screen/binding/product_details_binding.dart';
import 'package:diabetes_control_app/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:diabetes_control_app/presentation/profile_details_screen/binding/profile_details_binding.dart';
import 'package:diabetes_control_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:diabetes_control_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:diabetes_control_app/presentation/health_info_screen/health_info_screen.dart';
import 'package:diabetes_control_app/presentation/health_info_screen/binding/health_info_binding.dart';
import 'package:diabetes_control_app/presentation/target_glucose_range_screen/target_glucose_range_screen.dart';
import 'package:diabetes_control_app/presentation/target_glucose_range_screen/binding/target_glucose_range_binding.dart';
import 'package:diabetes_control_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:diabetes_control_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:diabetes_control_app/presentation/logout_screen/logout_screen.dart';
import 'package:diabetes_control_app/presentation/logout_screen/binding/logout_binding.dart';
import 'package:diabetes_control_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:diabetes_control_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String basicDetailsScreen = '/basic_details_screen';

  static const String genderScreen = '/gender_screen';

  static const String diabetesTypeScreen = '/diabetes_type_screen';

  static const String diabetesTypeSelectedScreen =
      '/diabetes_type_selected_screen';

  static const String therapyTypeScreen = '/therapy_type_screen';

  static const String measurementUnitTypeScreen =
      '/measurement_unit_type_screen';

  static const String sugarGoalsScreen = '/sugar_goals_screen';

  static const String glucoseLevelScreen = '/glucose_level_screen';

  static const String basicDetailsOneScreen = '/basic_details_one_screen';

  static const String detailsUploadSuccessScreen =
      '/details_upload_success_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationWithErrorScreen =
      '/verification_with_error_screen';

  static const String resetPassswordScreen = '/reset_passsword_screen';

  static const String resetPassswordSuccessScreen =
      '/reset_passsword_success_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String quickAddPopUpScreen = '/quick_add_pop_up_screen';

  static const String glucoseScreen = '/glucose_screen';

  static const String pillsScreen = '/pills_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String pillsMedNameSelectedScreen =
      '/pills_med_name_selected_screen';

  static const String insulinScreen = '/insulin_screen';

  static const String insulinWithDropdownScreen =
      '/insulin_with_dropdown_screen';

  static const String insulinChangeMeasureScreen =
      '/insulin_change_measure_screen';

  static const String myMealPage = '/my_meal_page';

  static const String searchScreen = '/search_screen';

  static const String searchResultOneScreen = '/search_result_one_screen';

  static const String addMealScreen = '/add_meal_screen';

  static const String addMealOneScreen = '/add_meal_one_screen';

  static const String productDetailsScreen = '/product_details_screen';

  static const String productDetailsTipsScreen = '/product_details_tips_screen';

  static const String rewcordPage = '/rewcord_page';

  static const String profilePage = '/profile_page';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String healthInfoScreen = '/health_info_screen';

  static const String targetGlucoseRangeScreen = '/target_glucose_range_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String logoutScreen = '/logout_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [

    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(seconds: 1),

      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: splashOneScreen,
      page: () => SplashOneScreen(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SplashOneBinding(),
      ],
    ),
    GetPage(
      name: basicDetailsScreen,
      page: () => BasicDetailsScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        BasicDetailsBinding(),
      ],
    ),
    GetPage(
      name: genderScreen,
      page: () => GenderScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        GenderBinding(),
      ],
    ),
    GetPage(
      name: diabetesTypeScreen,
      page: () => DiabetesTypeScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),

      bindings: [
        DiabetesTypeBinding(),
      ],
    ),
    GetPage(
      name: diabetesTypeSelectedScreen,
      page: () => DiabetesTypeSelectedScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        DiabetesTypeSelectedBinding(),
      ],
    ),
    GetPage(
      name: therapyTypeScreen,
      page: () => TherapyTypeScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        TherapyTypeBinding(),
      ],
    ),
    GetPage(
      name: measurementUnitTypeScreen,
      page: () => MeasurementUnitTypeScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        MeasurementUnitTypeBinding(),
      ],
    ),
    GetPage(
      name: sugarGoalsScreen,
      page: () => SugarGoalsScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SugarGoalsBinding(),
      ],
    ),
    GetPage(
      name: glucoseLevelScreen,
      page: () => GlucoseLevelScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        GlucoseLevelBinding(),
      ],
    ),
    GetPage(
      name: basicDetailsOneScreen,
      page: () => BasicDetailsOneScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        BasicDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: detailsUploadSuccessScreen,
      page: () => DetailsUploadSuccessScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        DetailsUploadSuccessBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: logInWithErrorScreen,
      page: () => LogInWithErrorScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        LogInWithErrorBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationWithErrorScreen,
      page: () => VerificationWithErrorScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        VerificationWithErrorBinding(),
      ],
    ),
    GetPage(
      name: resetPassswordScreen,
      page: () => ResetPassswordScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ResetPassswordBinding(),
      ],
    ),
    GetPage(
      name: resetPassswordSuccessScreen,
      page: () => ResetPassswordSuccessScreen(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ResetPassswordSuccessBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: homePage,
      page: () => HomePage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: myMealPage,
      page: () => MyMealPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        MyMealBinding(),
      ],
    ),
    GetPage(
      name: rewcordPage,
      page: () => RecordPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        RecordPageBinding(),
      ],
    ),
    GetPage(
      name: profilePage,
      page: () => ProfilePage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ProfilePageBinding(),
      ],
    ),
    GetPage(
      name: quickAddPopUpScreen,
      page: () => QuickAddPopUpScreen(),
      transition: Transition.cupertinoDialog,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        QuickAddPopUpBinding(),
      ],
    ),
    GetPage(
      name: glucoseScreen,
      page: () => GlucoseScreen(),
      transition: Transition.rightToLeft
      ,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        GlucoseBinding(),
      ],
    ),
    GetPage(
      name: pillsScreen,
      page: () => PillsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        PillsBinding(),
      ],
    ),
    GetPage(
      name: searchOneScreen,
      page: () => SearchOneScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SearchOneBinding(),
      ],
    ),

    GetPage(
      name: insulinScreen,
      page: () => InsulinScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        InsulinBinding(),
      ],
    ),
    GetPage(
      name: insulinWithDropdownScreen,
      page: () => InsulinWithDropdownScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        InsulinWithDropdownBinding(),
      ],
    ),
    GetPage(
      name: insulinChangeMeasureScreen,
      page: () => InsulinChangeMeasureScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        InsulinChangeMeasureBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultOneScreen,
      page: () => SearchResultOneScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SearchResultOneBinding(),
      ],
    ),
    GetPage(
      name: addMealScreen,
      page: () => AddMealScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        AddMealBinding(),
      ],
    ),
    GetPage(
      name: addMealOneScreen,
      page: () => AddMealOneScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),

      bindings: [
        AddMealOneBinding(),
      ],
    ),
    GetPage(
      name: productDetailsScreen,
      page: () => ProductDetailsScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ProductDetailsBinding(),
      ],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        ProfileDetailsBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: healthInfoScreen,
      page: () => HealthInfoScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        HealthInfoBinding(),
      ],
    ),
    GetPage(
      name: targetGlucoseRangeScreen,
      page: () => TargetGlucoseRangeScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        TargetGlucoseRangeBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: logoutScreen,
      page: () => LogoutScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        LogoutBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),

      bindings: [
        AppNavigationBinding(),

      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
