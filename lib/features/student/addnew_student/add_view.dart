import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kolliity/features/login/login_viewModel.dart';
import 'package:kolliity/shared/util/ui.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/ui/componants/custom_button.dart';
import '../student_list/view/student_list.dart';

class AddNewStudent extends StatefulWidget {
  final Function(Student) onAdd;

  const AddNewStudent({super.key, required this.onAdd});
  @override
  State<AddNewStudent> createState() => _AddNewStudentState();
}

class _AddNewStudentState extends State<AddNewStudent> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _profilePictureController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _fullNameController.dispose();
    _profilePictureController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final newStudent = Student(
        profilePicture: _profilePictureController.text,
        username: _usernameController.text,
        fullName: _fullNameController.text,
        code: int.parse(_codeController.text),
      );
      widget.onAdd(newStudent);
      Navigator.of(context).pop();
    }
  }
  @override
  Widget build(BuildContext context) {

    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;

    return
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 56),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [

                  SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(

                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Container(
                            //   margin: EdgeInsets.fromLTRB(9, 0, 7, 9),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       Container(
                            //         margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                            //         child: SizedBox(
                            //           width: 26,
                            //           height: 22,
                            //           child: SvgPicture.asset(
                            //             'assets/vectors/vector_344_x2.svg',
                            //           ),
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         width: 30,
                            //         height: 28,
                            //         child: SvgPicture.asset(
                            //           'assets/vectors/vector_50_x2.svg',
                            //         ),
                            //       ),
                            //       Container(
                            //         margin: EdgeInsets.fromLTRB(0, 2, 0, 7),
                            //         child: SizedBox(
                            //           width: 19,
                            //           height: 19,
                            //           child: SvgPicture.asset(
                            //             'assets/vectors/vector_335_x2.svg',
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            // Container(
                            //   margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            //   decoration: BoxDecoration(
                            //     color: Color(0xFFFFFFFF),
                            //     boxShadow: [
                            //       BoxShadow(
                            //         color: Color(0xFF000000),
                            //         offset: Offset(0, 3),
                            //         blurRadius: 2.5,
                            //       ),
                            //     ],
                            //   ),
                            //   child: Container(
                            //     width: 430,
                            //     height: 1,
                            //   ),
                            // ),
                            Container(
                              margin: EdgeInsets.fromLTRB(11, 0, 17, 11),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 34, 51),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(31),
                                                color: Color(0xFFD9D9D9),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    'assets/images/ellipse_2.jpeg',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                height: 62,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(97.5),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/image.jpeg',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              height: 113,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 24, 79, 36),
                                          child: Text(
                                            'FCAI',
                                            style: GoogleFonts.getFont(
                                              'Krub',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 43,
                                              height: 1.2,
                                              letterSpacing: -0.9,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                        BackButton(
                                          onPressed: (){UI.pop();},
                                          // child: Container(
                                          //   margin: EdgeInsets.fromLTRB(0, 14, 0, 78),
                                          //   child: SizedBox(
                                          //     width: 23,
                                          //     height: 21,
                                          //     child: SvgPicture.asset(
                                          //       'assets/vectors/vector_411_x2.svg',
                                          //     ),
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 106.4,
                                    bottom: 29,
                                    child: SizedBox(
                                      height: 16,
                                      child: Text(
                                        'platform',
                                        style: GoogleFonts.getFont(
                                          'Krub',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          height: 1.2,
                                          letterSpacing: -0.3,
                                          color: Color(0xFF6B6B6B),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 59.5, 8),
                              child: Text(
                                'Add New Student',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  height: 1.2,
                                  letterSpacing: -0.6,
                                  color: Color(0xFF013267),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              width: double.infinity,
                              height: 88 * fem,
                              child: TextFormField(
                                controller: _fullNameController,
                                decoration: const InputDecoration(
                                  labelText: 'full name',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.supervised_user_circle,),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              width: double.infinity,
                              height: 88 * fem,
                              child: TextFormField(
                                controller: _usernameController,
                                decoration: const InputDecoration(
                                  labelText: 'user name',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.supervised_user_circle,),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your user_name';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              width: double.infinity,
                              height: 88 * fem,
                              child: TextFormField(
                                controller: _profilePictureController,
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your emil';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 7 * fem),
                              width: double.infinity,
                              height: 88 * fem,
                              child: TextFormField(
                                controller: _codeController,
                                decoration: const InputDecoration(
                                  labelText: 'Code',
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.qr_code,),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your code';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            // TextFormField(
                            //   controller: username,
                            //   obscureText: !visibleState.data,
                            //   decoration: InputDecoration(
                            //     labelText: 'Password',
                            //     border: const OutlineInputBorder(),
                            //     prefixIcon: const Icon(
                            //       Icons.lock,
                            //     ),
                            //     suffixIcon: IconButton(
                            //       icon: Icon(visibleState.data
                            //           ? Icons.visibility
                            //           : Icons.visibility_off),
                            //       onPressed: () {
                            //         viewModel.isPasswordVisible
                            //             .onUpdateData(!visibleState.data);
                            //       },
                            //     ),
                            //   ),
                            //
                            //
                            //   validator: (value) {
                            //     if (value == null || value.isEmpty) {
                            //       return 'Please enter your password';
                            //     }
                            //     return null;
                            //   },
                            //
                            // ),
                            CustomButton(
                              title: "add",
                              width: 150.sp,
                              textColor: AppColors.kBlackColor,
                              btnColor: AppColors.kGreyColor9D9,
                              onClick: _submit
                            ),
                            const SizedBox(height: 12,),
                            CustomButton(
                              title: "Cancel",
                              width: 150.sp,
                              textColor: AppColors.kWhiteColor,
                              btnColor: AppColors.kRedColor,
                              onClick: () {
                                UI.pop();
                                     },
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}