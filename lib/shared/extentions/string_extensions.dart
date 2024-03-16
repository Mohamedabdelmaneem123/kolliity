import 'package:elhamlah_elraqiah/shared/constants/constants.dart';
import 'package:flutter/cupertino.dart';

extension StringExtensions on String {
  String tr({BuildContext? context}) {
    return translate(this, context: context);
  }
}
