import 'package:flutter/material.dart';

import '../../constants.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color buttonBoxColor;
  final Color buttonBorderColor;
  final Color headerFontColor;
  final Color headerBackgroundColor;
  final Color drawerBackgroundColor;
  final Color profilePicBorderColor;

  // Updated constructor to allow optional parameters with default values
  const CustomColors({
    Color? buttonBoxColor,
    Color? buttonBorderColor,
    Color? headerFontColor,
    Color? headerBackgroundColor,
    Color? drawerBackgroundColor,
    Color? profilePicBorderColor,
  })  : buttonBoxColor = buttonBoxColor ?? Colors.grey,
        buttonBorderColor = buttonBorderColor ?? Colors.black,
        headerFontColor = headerFontColor ?? Colors.white,
        headerBackgroundColor = headerBackgroundColor ?? Colors.blueGrey,
        drawerBackgroundColor = drawerBackgroundColor ?? AppStyles.bgColor,
        profilePicBorderColor = profilePicBorderColor ?? Colors.orange;

  @override
  CustomColors copyWith({
    Color? buttonBoxColor,
    Color? buttonBorderColor,
    Color? headerFontColor,
    Color? headerBackgroundColor,
    Color? drawerBackgroundColor,
    Color? profilePicBorderColor,
  }) {
    return CustomColors(
      buttonBoxColor: buttonBoxColor ?? this.buttonBoxColor,
      buttonBorderColor: buttonBorderColor ?? this.buttonBorderColor,
      headerFontColor: headerFontColor ?? this.headerFontColor,
      headerBackgroundColor: headerBackgroundColor ?? this.headerBackgroundColor,
      drawerBackgroundColor: drawerBackgroundColor ?? this.drawerBackgroundColor,
      profilePicBorderColor: profilePicBorderColor ?? this.profilePicBorderColor,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      buttonBoxColor: Color.lerp(buttonBoxColor, other.buttonBoxColor, t) ?? buttonBoxColor,
      buttonBorderColor: Color.lerp(buttonBorderColor, other.buttonBorderColor, t) ?? buttonBorderColor,
      headerFontColor: Color.lerp(headerFontColor, other.headerFontColor, t) ?? headerFontColor,
      headerBackgroundColor: Color.lerp(headerBackgroundColor, other.headerBackgroundColor, t) ?? headerBackgroundColor,
      drawerBackgroundColor: Color.lerp(drawerBackgroundColor, other.drawerBackgroundColor, t) ?? drawerBackgroundColor,
      profilePicBorderColor: Color.lerp(profilePicBorderColor, other.profilePicBorderColor, t) ?? profilePicBorderColor,
    );
  }
}
