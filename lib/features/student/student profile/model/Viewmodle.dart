import 'package:flutter/cupertino.dart';
import 'package:kolliity/features/login/model/login_reprositry.dart';
import 'package:kolliity/features/student/student%20profile/model/model.dart';
import 'package:kolliity/features/student/student%20profile/model/reprsatry.dart';
import 'package:kolliity/shared/generic_cubit/generic_cubit.dart';

import '../../../../shared/models/failure.dart';



class HomeModel {

  HomeRepository repository = HomeRepository();
  GenericCubit<Map<String, dynamic>?> homeCubit = GenericCubit(null);
  GenericCubit<Profile> profile = GenericCubit(Profile as Profile);




  getHomeData() async{
    homeCubit.onLoadingState();
    try {
      final result = await repository.getHomeData();
      Profile home = Profile.fromJson(result["data"]);
      homeCubit.onUpdateData(home as Map<String, dynamic>?);
    } on Failure catch (e) {
      homeCubit.onErrorState(e);
    }
  }
  }
