import 'package:flutter/material.dart';

class AppColors {

  static Color SIGNUP_BUTTON_COLOR () {
    return hexToColor("#1AD7E7");
  }

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static SIGNUP_FACEBOOK_BUTTON_COLOR() {
    return hexToColor("#3864A6");
  }


}