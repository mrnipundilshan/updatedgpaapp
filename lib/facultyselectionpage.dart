import 'package:dropdown_button2/dropdown_button2.dart';
import 'background/bg.dart';
import 'package:flutter/material.dart';
import 'databasehelper.dart';

class FacSelectionPage extends StatefulWidget {
  const FacSelectionPage({super.key});

  @override
  State<FacSelectionPage> createState() => _FacSelectionPageState();
}

class _FacSelectionPageState extends State<FacSelectionPage> {
  final List<String> faculties = <String>['FAS', 'Tech', 'Bussiness Studies'];
  final Map<String, List<String>> courses = {
    'FAS': ['IT', 'BIO', 'AMC', 'CS'],
    'Tech': ['Tech'],
    'Bussiness Studies': [],
  };

  String? selectedFac;
  String? selectedCourse;
  List<String> availableCourses = [];
  final TextEditingController _nameController = TextEditingController();
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Column(
              children: [
                Container(
                  width: width * 0.5,
                  height: height * 0.07,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 45, 100, 107),
                  ),
                  child: TextField(
                    controller: _nameController,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.05),

                DropdownButton2<String>(
                  underline: SizedBox.shrink(),
                  hint: Text(
                    'Select Faculty',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),

                  items:
                      faculties
                          .map(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                          .toList(),
                  value: selectedFac,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedFac = newValue!;
                      if (selectedFac == 'Tech') {
                        selectedCourse = 'Tech';
                      } else {
                        selectedCourse = null;
                      }
                      availableCourses = courses[selectedFac] ?? [];
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 45, 100, 107),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: height * 0.07,
                    width: width * 0.5,
                    elevation: 1,
                  ),

                  iconStyleData: const IconStyleData(
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    iconSize: 14,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromARGB(255, 48, 131, 151),
                    ),
                    offset: const Offset(0, 0),
                  ),
                ),

                SizedBox(height: height * 0.05),

                DropdownButton2<String>(
                  underline: SizedBox.shrink(),
                  hint: Text(
                    'Select Course',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),

                  items:
                      availableCourses
                          .map(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                          .toList(),
                  value: selectedCourse,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCourse = newValue!;
                    });
                  },
                  buttonStyleData: ButtonStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 45, 100, 107),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: height * 0.07,
                    width: width * 0.5,
                    elevation: 1,
                  ),

                  iconStyleData: const IconStyleData(
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    iconSize: 14,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromARGB(255, 48, 131, 151),
                    ),
                    offset: const Offset(0, 0),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 45, 100, 107),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    minimumSize: Size(width * 0.25, height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                ElevatedButton(
                  onPressed: () async {
                    if (_nameController.text.isNotEmpty &&
                        selectedFac != null &&
                        selectedCourse != null) {
                      Map<String, dynamic> student = {
                        'name': _nameController.text,
                        'faculty': selectedFac,
                        'course': selectedCourse,
                        'gpa': 0.0,
                      };

                      await _dbHelper.insertStudent(student);

                      // Clear the form after adding
                      _nameController.clear();
                      setState(() {
                        selectedFac = null;
                        selectedCourse = null;
                        availableCourses = [];
                      });
                      Navigator.pop(context, true);
                    } else if (_nameController.text.isNotEmpty &&
                        selectedFac == 'Tech') {
                      Map<String, dynamic> student = {
                        'name': _nameController.text,
                        'faculty': selectedFac,
                        'course': '-',
                        'gpa': 0.0,
                      };

                      await _dbHelper.insertStudent(student);

                      // Clear the form after adding
                      _nameController.clear();
                      setState(() {
                        selectedFac = null;
                        selectedCourse = null;
                        availableCourses = [];
                      });
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 45, 100, 107),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    minimumSize: Size(width * 0.25, height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.0005),
          ],
        ),
      ),
    );
  }
}
