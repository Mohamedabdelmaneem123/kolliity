// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:kolliity/features/login/login_viewModel.dart';
// import 'package:kolliity/shared/extentions/padding_extentions.dart';
//
// import 'package:kolliity/shared/extentions/string_extensions.dart';
//
// import '../../../shared/app_size.dart';
// import '../../../shared/constants/colors.dart';
// import '../../../shared/constants/styles.dart';
// import '../../../shared/generic_cubit/generic_cubit.dart';
// import '../../../shared/models/custom_message_model.dart';
// import '../../../shared/resources.dart';
// import '../../../shared/ui/componants/loading_widget.dart';
// import '../../../shared/util/ui.dart';
//
// class UpdateProfileImage extends StatefulWidget {
//   const UpdateProfileImage({Key? key}) : super(key: key);
//
//   @override
//   State<UpdateProfileImage> createState() => _UpdateProfileImageState();
// }
//
// class _UpdateProfileImageState extends State<UpdateProfileImage> {
//   LoginViewModel viewModel = LoginViewModel();
//
//   @override
//   void initState() {
//     viewModel.formKey;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(
//         bottom: MediaQuery.of(context).viewInsets.bottom,
//       ),
//       child: Container(
//         height: AppSize.h220,
//         width: double.infinity,
//         padding: EdgeInsets.all(AppSize.w26),
//         decoration: BoxDecoration(
//           color: AppColors.kBackgroundColor,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(AppSize.r30),
//             topRight: Radius.circular(AppSize.r30),
//           ),
//         ),
//         child: BlocBuilder<GenericCubit<TextEditingController>, GenericCubitState<TextEditingController>>(
//             bloc: viewModel.password,
//             builder: (context, state) {
//               return state is GenericLoadingState
//                   ? const Loading():
//               Column(
//                 children: [
//                   BlocConsumer<GenericCubit<Map<String, dynamic>?>, GenericCubitState<Map<String, dynamic>?>>(
//                     bloc: viewModel.loginCubit,
//                     builder: (context, add_state) {
//                       return add_state is GenericLoadingState
//                           ? SizedBox(
//                           height: 100.sp,
//                           width: 100.sp,
//                           child: const Loading()
//                       ):
//                       InkWell(
//                         onTap: () async{
//                           viewModel.loginCubit;
//                         },
//                         child: Stack(
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(90),
//                               // child: Image.network(state.data.text?.length ?? "",
//                               //   height: 100.sp,
//                               //   width: 100.sp,
//                               //   fit: BoxFit.cover,
//                               // ),
//                             ),
//                             Positioned(
//                               left: 0,
//                               right: 0,
//                               top: 0,
//                               bottom: 0,
//                               child: Image.asset(Resources.camerax),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     listener: (BuildContext context, GenericCubitState<Map<String, dynamic>?> state) {
//                       if(state is GenericUpdatedState){
//                         UI.showCustomMessage(state.data?["message"]??"", type: CustomMessageType.success);
//                       }
//                     },
//                   ),
//                   AppSize.h5.ph,
//                   Text("update_profile_image".tr(), style: AppStyles.kTextStyle20.copyWith(
//                       color: AppColors.kMainColor,
//                       fontWeight: FontWeight.bold
//                   ),),
//                 ],
//               );
//             }
//         ),
//       ),
//     );
//   }
// }
