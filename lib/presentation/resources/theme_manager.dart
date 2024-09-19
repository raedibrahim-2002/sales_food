import 'package:flutter/material.dart';
import 'package:sales_mvvm/presentation/resources/color_manager.dart';
import 'package:sales_mvvm/presentation/resources/font_manager.dart';
import 'package:sales_mvvm/presentation/resources/styles_manager.dart';
import 'package:sales_mvvm/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary, // ripple effect دا بيحصل لما اضغط على زرار لفترة طويلة
    // cardView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // appBar theme
    appBarTheme: AppBarTheme(centerTitle: true, color: ColorManager.primary, elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16,),),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSize.s17,
          ), backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
      ),
    ),
    // text theme
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
        headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSize.s16,
        ),
        headlineMedium: getRegularStyle(
          color: ColorManager.lightGrey,
          fontSize: FontSize.s14,
        ),
        titleMedium: getMediumStyle(color:ColorManager.primary,
        fontSize: FontSize.s16,
        ),
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
        bodySmall: getRegularStyle(color: ColorManager.grey)),

    // input decoration theme (text from field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSize.s14,
      ),
      // label style
      labelStyle: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSize.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),

      // focused border style
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      // error border style
      errorBorder:  OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      focusedErrorBorder:  OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
  );
}
