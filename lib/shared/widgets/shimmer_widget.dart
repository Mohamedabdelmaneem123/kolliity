
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../app_size.dart';


class ShimmerWidget extends StatelessWidget {
  final double? height;

  const ShimmerWidget({this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height ?? AppSize.sp200,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white30,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
