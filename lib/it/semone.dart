import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:newgpaapp/background/bg.dart';
import 'package:newgpaapp/databasehelper.dart';
import 'package:newgpaapp/homepage.dart';

class itsemone extends StatefulWidget {
  final int studentId; // Add this property
  const itsemone({super.key, required this.studentId});

  @override
  State<itsemone> createState() => _itsemoneState();
}

class _itsemoneState extends State<itsemone> {
  final List<String> results = <String>[
    'A+/A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D+',
    'D',
    'E',
  ];
  String? selectedresult;

  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> subjects = [];

  @override
  void initState() {
    super.initState();
    _loadSubjects();
  }

  Future<void> _loadSubjects() async {
    final db = await _dbHelper.database;
    final List<Map<String, dynamic>> loadedSubjects = await db.query(
      'subjects',
      where: 'course_code IN (?, ?, ?, ?, ?, ?)',
      whereArgs: ['IT113', 'IT1122', 'IT1134', 'IT1144', 'IT1152', 'ACU1113'],
    );

    setState(() {
      subjects = loadedSubjects;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Background(
      child: Column(
        children: [
          subjects.isEmpty
              ? const Center(
                child: Text(
                  "No subjects found",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
              : Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: subjects.length,
                  itemBuilder: (context, index) {
                    final subject = subjects[index];
                    return Card(
                      margin:
                          index == 0
                              ? const EdgeInsets.only(
                                bottom: 16,
                                left: 5,
                                right: 5,
                                top: 16,
                              )
                              : const EdgeInsets.only(
                                bottom: 16,
                                left: 5,
                                right: 5,
                              ),
                      color: const Color.fromARGB(255, 45, 100, 107),
                      child: ListTile(
                        title: Text(subject['course_code']),
                        subtitle: Text(subject['course_title']),
                        trailing: DropdownButton2(
                          underline: SizedBox.shrink(),
                          hint: Text(
                            '-',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                          ),
                          items:
                              results
                                  .map(
                                    (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                          value: selectedresult,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedresult = newValue;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 45, 100, 107),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            height: height * 0.07,
                            width: width * 0.25,
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
                      ),
                    );
                  },
                ),
              ),

          Padding(
            padding: EdgeInsets.only(bottom: height * 0.15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                      (route) => false,
                    );
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
                  onPressed: () {},
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
                    'Save',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
