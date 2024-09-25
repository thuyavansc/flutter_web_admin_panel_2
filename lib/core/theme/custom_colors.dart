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

  //Text
  final Color drawerTextColor;
  final Color bodyPrimaryTextColor;
  final Color bodySecondaryTextColor;

  //Card
  final Color cardPrimaryBgColor;

  // Updated constructor to allow optional parameters with default values
  const CustomColors({
    Color? buttonBoxColor,
    Color? buttonBorderColor,
    Color? headerFontColor,
    Color? headerBackgroundColor,
    Color? drawerBackgroundColor,
    Color? profilePicBorderColor,
    Color? drawerTextColor,
    Color? bodyPrimaryTextColor,
    Color? bodySecondaryTextColor,
    Color? cardPrimaryBgColor,
  })  : buttonBoxColor = buttonBoxColor ?? Colors.grey,
        buttonBorderColor = buttonBorderColor ?? Colors.black,
        headerFontColor = headerFontColor ?? Colors.white,
        headerBackgroundColor = headerBackgroundColor ?? Colors.blueGrey,
        drawerBackgroundColor = drawerBackgroundColor ?? AppStyles.primaryColor,
        profilePicBorderColor = profilePicBorderColor ?? Colors.orange,
        drawerTextColor = drawerTextColor ?? Colors.black,
        bodyPrimaryTextColor = bodyPrimaryTextColor ?? Colors.black,
        bodySecondaryTextColor = bodySecondaryTextColor ?? Colors.black,
        cardPrimaryBgColor = cardPrimaryBgColor ?? AppStyles.grey;

  @override
  CustomColors copyWith({
    Color? buttonBoxColor,
    Color? buttonBorderColor,
    Color? headerFontColor,
    Color? headerBackgroundColor,
    Color? drawerBackgroundColor,
    Color? profilePicBorderColor,
    Color? drawerTextColor,
    Color? bodyPrimaryTextColor,
    Color? bodySecondaryTextColor,
    Color? cardPrimaryBgColor,
  }) {
    return CustomColors(
      buttonBoxColor: buttonBoxColor ?? this.buttonBoxColor,
      buttonBorderColor: buttonBorderColor ?? this.buttonBorderColor,
      headerFontColor: headerFontColor ?? this.headerFontColor,
      headerBackgroundColor: headerBackgroundColor ?? this.headerBackgroundColor,
      drawerBackgroundColor: drawerBackgroundColor ?? this.drawerBackgroundColor,
      profilePicBorderColor: profilePicBorderColor ?? this.profilePicBorderColor,
      drawerTextColor: drawerTextColor ?? this.drawerTextColor,
      bodyPrimaryTextColor: bodyPrimaryTextColor ?? this.bodyPrimaryTextColor,
      bodySecondaryTextColor: bodySecondaryTextColor ?? this.bodySecondaryTextColor,
      cardPrimaryBgColor: cardPrimaryBgColor ?? this.cardPrimaryBgColor,
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
      drawerTextColor: Color.lerp(drawerTextColor, other.drawerTextColor, t) ?? drawerTextColor,
      bodyPrimaryTextColor: Color.lerp(bodyPrimaryTextColor, other.bodyPrimaryTextColor, t) ?? bodyPrimaryTextColor,
      bodySecondaryTextColor: Color.lerp(bodySecondaryTextColor, other.bodySecondaryTextColor, t) ?? bodySecondaryTextColor,
      cardPrimaryBgColor: Color.lerp(cardPrimaryBgColor, other.cardPrimaryBgColor, t) ?? cardPrimaryBgColor,
    );
  }
}
