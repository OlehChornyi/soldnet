import 'package:flutter/widgets.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class AppTextStyles {
  static const _primaryFont = 'Poppins';

  static TextStyle s12w500({Color? color}) {
    return TextStyle(
      fontSize: 12,
      fontFamily: _primaryFont,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.black,
      height: 1,
    );
  }

  static TextStyle s16w500({Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontFamily: _primaryFont,
      fontWeight: FontWeight.w500,
      color: color ?? AppColors.black,
      height: 1,
    );
  }

  static TextStyle s16w700({Color? color}) {
    return TextStyle(
      fontSize: 16,
      fontFamily: _primaryFont,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.black,
      height: 1,
    );
  }

  static TextStyle s20w600({Color? color}) {
    return TextStyle(
      fontSize: 20,
      fontFamily: _primaryFont,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.black,
      height: 1,
    );
  }

  static TextStyle s32w700({Color? color}) {
    return TextStyle(
      fontSize: 32,
      fontFamily: _primaryFont,
      fontWeight: FontWeight.w700,
      color: color ?? AppColors.black,
      height: 1,
    );
  }
}
