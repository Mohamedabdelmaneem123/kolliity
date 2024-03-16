import 'package:elhamlah_elraqiah/shared/constants/colors.dart';
import 'package:elhamlah_elraqiah/shared/constants/styles.dart';
import 'package:elhamlah_elraqiah/shared/extentions/string_extensions.dart';
import 'package:flutter/material.dart';

class EmptyData extends StatelessWidget {
  final Color? color;
  const EmptyData({Key? key, this.color = AppColors.kMainColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("No Data Found".tr(), style: AppStyles.kTextStyle24.copyWith(
          color: color
      ), ),
    );
  }
}
