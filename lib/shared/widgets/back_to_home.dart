
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kolliity/shared/extentions/padding_extentions.dart';

import '../app_size.dart';
import '../constants/styles.dart';
import '../ui/componants/custom_button.dart';
import '../util/app_routes.dart';
import '../util/ui.dart';
class BackToHome extends StatelessWidget {
  const BackToHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: AppSize.h220,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("please login".tr, style: AppStyles.kTextStyle20,),
            AppSize.h10.ph,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomButton(title: "login".tr, onClick: () => UI.push(AppRoutes.loginScreen)),
            ),
            AppSize.h10.ph,
            InkWell(onTap:() => UI.pop(),child: Text("Back".tr, style: AppStyles.kTextStyle14))
          ],
        ),
      ),
    );
  }
}
