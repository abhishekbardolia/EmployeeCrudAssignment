import 'package:flutter/material.dart';

import 'color.dart';
import 'constant.dart';
import 'dimens.dart';

final ThemeData kLightTheme = ThemeData(
  primaryColor: AppCustomColor.accentColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppCustomColor.accentColor),
  dialogBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(color: AppCustomColor.accentColor),
  textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: AppDimensions.fontLarge,
          color: AppCustomColor.accentColor,
          fontWeight: FontWeight.w500),
      titleMedium: TextStyle(fontFamily: fontFamily, fontSize: AppDimensions.fontLarge),
      titleSmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: AppDimensions.fontMedium,
          color: AppCustomColor.descriptionTextColor),
      displaySmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: AppDimensions.fontSmall,
          color: AppCustomColor.descriptionTextColor),
  ),
  appBarTheme: const AppBarTheme(
      color: AppCustomColor.accentColor,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: AppDimensions.fontXLarge)),
  useMaterial3: true,
);
