import 'package:fabrikod_quran/constants/constants.dart';
import 'package:flutter/material.dart';

/// Quran Theme
final ThemeData themeQuran = ThemeData(
  primaryColor: ColorConstants.yellow,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorConstants.yellow,
    titleTextStyle: TextStyle(
      color: ColorConstants.brown,
      fontSize: 20,
      fontFamily: Fonts.nunitoW900,
      fontWeight: FontWeight.w900,
    ),
    elevation: 0,
    iconTheme: const IconThemeData(
      color: ColorConstants.brown,
    ),
  ),
  indicatorColor:  ColorConstants.brown,
  iconTheme: const IconThemeData(color: ColorConstants.brown),
  backgroundColor: ColorConstants.yellow,
  sliderTheme: const SliderThemeData(
    trackHeight: 2,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
    overlayShape: RoundSliderOverlayShape(
      overlayRadius: 0,
    ),
  ),
  drawerTheme: const DrawerThemeData(
      backgroundColor: ColorConstants.yellow,
      scrimColor: Colors.transparent,
      elevation: 0
  ),
  secondaryHeaderColor: ColorConstants.brown.withOpacity(0.4),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  scaffoldBackgroundColor: ColorConstants.yellow,
  cardTheme: CardTheme(color: ColorConstants.brown.withOpacity(0.1)),
  canvasColor: ColorConstants.brown,
  dividerColor: ColorConstants.brown.withOpacity(0.2),
  fontFamily: Fonts.nunito,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ColorConstants.yellow,
    elevation: 0,
    selectedItemColor: ColorConstants.brown,
    unselectedItemColor: ColorConstants.brown,
  ),
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: ColorConstants.brown),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: ColorConstants.brown,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorConstants.brown,
    ),
    displaySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: ColorConstants.brown,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: ColorConstants.brown,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: ColorConstants.brown,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: ColorConstants.brown,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorConstants.brown,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ColorConstants.brown,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorConstants.brown,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorConstants.brown,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w800,
      color: ColorConstants.brown,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorConstants.brown,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorConstants.brown,
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: ColorConstants.brown,
    ),
  ),
);
