
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../shared/app_size.dart';
import '../../shared/constants/colors.dart';
import '../../shared/constants/styles.dart';
import '../../shared/providers/language_provider.dart';
import '../../shared/util/ui.dart';
import 'package:provider/provider.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key? key}) : super(key: key);

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          height: AppSize.h220,
          width: double.infinity,
          padding: EdgeInsets.all(AppSize.w26),
          decoration: BoxDecoration(
            color: AppColors.kBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSize.r30),
              topRight: Radius.circular(AppSize.r30),
            ),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () async{
                  Provider.of<LanguageProvider>(context, listen: false).changeLanguage(Locale("ar"));
                  UI.pop();
                },
                child: Text("العربية", style: AppStyles.kTextStyle24.copyWith(
                    color: AppColors.kMainColor,
                    fontWeight: FontWeight.w600
                ),),
              ),
              const SizedBox(height: 10,),
              const Divider(color: AppColors.kMainColor,),
              const  SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Provider.of<LanguageProvider>(context, listen: false).changeLanguage(Locale("en"));
                  UI.pop();
                },
                child: Text("English", style: AppStyles.kTextStyle24.copyWith(
                    color: AppColors.kMainColor,
                    fontWeight: FontWeight.w600
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}