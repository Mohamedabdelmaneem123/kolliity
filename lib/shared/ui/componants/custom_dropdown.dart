
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_size.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../resources.dart';

class CustomDropdown extends StatelessWidget {
  final Widget? icon;
  final Widget? hintObject;
  final String? hint;
  final List<DropdownMenuItem> items;
  final Function(dynamic) onChange;
  final dynamic value;
  final TextStyle? textStyle;

  const CustomDropdown(
      {required this.items,
      required this.onChange,
      this.icon,
      this.hintObject,
      this.hint,
      this.value,
      this.textStyle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.h56,
      decoration: BoxDecoration(
        // color: AppColors.kBorderColor,
        borderRadius: BorderRadius.circular(AppSize.w12),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.w15,
        vertical: AppSize.h10,
      ),
      child: Center(
        child: DropdownButton(
          isExpanded: true,
          underline: Container(),
          dropdownColor: Colors.white,
          icon: icon ?? SvgPicture.asset(Resources.dropdown),
          style: textStyle ??
              AppStyles.kTextStyleHeader20.copyWith(
                color: AppColors.kMainColor,
              ),
          hint: hintObject ??
              Text(
                hint ?? "",
                style: AppStyles.kTextStyle16.copyWith(),
              ),
          value: value,
          items: items,
          onChanged: onChange,
        ),
      ),
    );
  }
}
