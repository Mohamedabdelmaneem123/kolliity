
import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';

extension StringExtensions on String {
  String tr({BuildContext? context}) {
    return translate(this, context: context);
  }
}
