

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_size.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onClick;
  final double? height;
  final double? width;
  final double? textSize;
  final double? radius;
  final Color? btnColor;
  final Color? textColor;
  final TextStyle? textStyle;

  const CustomButton({
    required this.title,
    required this.onClick,
    this.height,
    this.textSize,
    this.radius,
    this.width = double.infinity,
    this.btnColor = AppColors.kGreyColor9D9,
    this.textColor = Colors.blue,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: height ?? AppSize.h44,
      minWidth: width,
      color: btnColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular((radius ?? AppSize.w8).r),
      ),
      onPressed: onClick,
      child: Text(
        title,
        style: textStyle ??
            AppStyles.kTextStyleHeader18.copyWith(color: textColor, fontSize: textSize?? 18.sp),
      ),
    );
  }
}
