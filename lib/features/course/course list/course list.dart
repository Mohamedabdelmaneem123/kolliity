import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kolliity/shared/constants/colors.dart';
import 'package:kolliity/shared/prefs/pref_manager.dart';
import 'package:kolliity/shared/util/app_routes.dart';
import 'package:kolliity/shared/util/ui.dart';

class Course {
  final int code;
  final String department;
  final String name;

  Course(this.code, this.department, this.name);
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('الكورس')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Name: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(course.name),
                    ],
                  ),
                  SizedBox(height: 11.0),
                  Row(
                    children: [
                      Text('Code: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(course.code.toString()),
                    ],
                  ),
                  SizedBox(height: 11.0),
                  Row(
                    children: [
                      Text('Department: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(course.department),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'عن دكتور الكورس',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/images/vector-NAA.png'), // Add your image asset here
                            ),
                          ),
                          SizedBox(height: 11.0),
                          Center(child: Text("${PrefManager.currentUser?.userName}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle doctor unassign button press
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: Center(child: Text('الغاء تعيين هذا الدكتور')),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'مساعد الكورس ',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                        Center(child: Text("هذا الكورس ليس له معدين حاليا")),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle doctor unassign button press
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: Center(child: Text('اضافة معيد')),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'غرفة الكورس',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle doctor unassign button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: Text('اضافة'),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("الاسم"),
                          SizedBox(height: 6.0),
                          Text("اسم الغرفه"),
                          SizedBox(height: 6.0),
                          Text("اسم الدكتور"),
                          SizedBox(height: 6.0),
                          Text(" mohamoud doctor"),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle doctor unassign button press
                                  UI.pushWithRemove(AppRoutes.room);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                                child: Text('دخول '),
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle doctor unassign button press
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                ),
                                child: Text('تعديل ',style: TextStyle(color: Colors.black),),
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle doctor unassign button press
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: Text(' حذف'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class CourseListScreen extends StatefulWidget {
  @override
  _CourseListScreenState createState() => _CourseListScreenState();
}

class _CourseListScreenState extends State<CourseListScreen> {
  final List<Course> courses = [
    Course(235, 'IS', 'Awesome Wooden Fish'),
    Course(185, 'CS', 'Ergonomic Rubber Keyboard'),
    Course(330, 'CS', 'Ergonomic Rubber Keyboard'),
    Course(327, 'MM', 'Fantastic Cotton Car'),
    Course(215, 'IS', 'Fantastic Granite Bacon'),
    Course(100, 'MM', 'Fantastic Plastic Towels'),
    Course(369, 'IS', 'Fantastic Rubber Shoes'),
    Course(133, 'IT', 'Fantastic Rubber Shoes'),
    Course(133, 'IT', 'Fantastic Rubber Shoes'),
    Course(133, 'IT', 'Fantastic Rubber Shoes'),
    Course(133, 'IT', 'Fantastic Rubber Shoes'),
    Course(133, 'IT', 'Fantastic Rubber Shoes'),
  ];

  late List<Course> filteredCourses;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredCourses = courses;
  }

  void _searchCourse(String query) {
    final results = courses.where((course) {
      final courseName = course.name.toLowerCase();
      final courseDepartment = course.department.toLowerCase();
      final courseCode = course.code.toString();

      final searchQuery = query.toLowerCase();

      return courseName.contains(searchQuery) ||
          courseDepartment.contains(searchQuery) ||
          courseCode.contains(searchQuery);
    }).toList();

    setState(() {
      filteredCourses = results;
    });
  }

  void _showCourseDetails(Course course) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CourseDetailsScreen(course: course);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('الكورسات المتاحة')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Search here',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _searchCourse(searchController.text);
                  },
                ),
              ),
              onChanged: (value) {
                _searchCourse(value);
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCourses.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(filteredCourses[index].name),
                      subtitle: Text('${filteredCourses[index].department} - ${filteredCourses[index].code}'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          _showCourseDetails(filteredCourses[index]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        child: Text('تفاصيل'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}