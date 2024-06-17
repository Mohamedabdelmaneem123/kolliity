import 'package:flutter/cupertino.dart';
import 'package:kolliity/features/login/model/login_reprositry.dart';
import 'package:kolliity/shared/generic_cubit/generic_cubit.dart';

import '../../shared/models/failure.dart';
import '../../shared/util/ui.dart';

class LoginViewModel {

  LoginRepository repository = LoginRepository();
  GenericCubit<Map<String, dynamic>?> loginCubit = GenericCubit(null);
  GenericCubit<bool> isPasswordVisible = GenericCubit(false);

  TextEditingController username = TextEditingController(text: "Mahmoudstudent22");
  TextEditingController password = TextEditingController(text: "Mahmoud2320030@");

  GlobalKey<FormState> formKey = GlobalKey();

  Future<void> login() async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    UI.removeKeyboard();
    loginCubit.onLoadingState();
    try {
      final result = await repository.login({
        "username": username.text.trim(),
        "password": password.text.trim(),
      });
      loginCubit.onUpdateData(result);
    } on Failure catch (failure) {
      loginCubit.onErrorState(failure);
    }
  }
}