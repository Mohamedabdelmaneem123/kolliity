
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';

class EmptyData extends StatelessWidget {
  final Color? color;
  const EmptyData({Key? key, this.color = AppColors.kMainColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("No Data Found".tr, style: AppStyles.kTextStyle24.copyWith(
          color: color
      ), ),
    );
  }
}
