
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kolliity/features/student/student_list/view/student_list.dart';
import 'package:kolliity/shared/ui/componants/custom_field.dart';

import '../../../shared/app_size.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/styles.dart';
import '../../../shared/util/ui.dart';


class SearchOnStudent extends StatefulWidget {
  const SearchOnStudent({Key? key}) : super(key: key);

  @override
  State<SearchOnStudent> createState() => _SearchOnStudentState();
}

class _SearchOnStudentState extends State<SearchOnStudent> {
  TextEditingController search =TextEditingController();
  List<Student> filteredStudents = [];


  @override
  void initState() {
    super.initState();
    // filteredStudents = students;
  }

  void _searchStudent(String query) {
    final int? code = int.tryParse(query);
    if (code != null) {
      setState(() {
        // filteredStudents = students.where((student) => student.code == code).toList();
      });
    } else {
      setState(() {
        // filteredStudents = students;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 100
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
                  print(("nice"));
                  UI.pop();
                },
                child:CustomField(controller: search,
                title: "search by code",
                  hint: "search by code",

                )
              ),
              const SizedBox(height: 10,),
              const Divider(color: AppColors.kMainColor,),
              const  SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  print("good");
                  UI.pop();
                },
                child: Center(
                  child: Text("Search", style: AppStyles.kTextStyle24.copyWith(
                      color: AppColors.kMainColor,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}