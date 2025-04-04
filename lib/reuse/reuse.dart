import 'package:flutter/material.dart';
import 'package:newgpaapp/it/semesterResults.dart';

class sembutton extends StatelessWidget {
  const sembutton({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    required this.studentId,
    required this.sem,
    required this.studentcourse,
  });

  final String name;
  final double width;
  final double height;
  final int studentId;
  final int sem;
  final String studentcourse;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (studentcourse == "IT") {
          if (sem == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT113',
                        'IT1122',
                        'IT1134',
                        'IT1144',
                        'IT1152',
                      ],
                    ),
              ),
            );
          }
          if (sem == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT1214',
                        'IT1223',
                        'IT1232',
                        'IT1242',
                        'IT1252',
                        'IT11262',
                      ],
                    ),
              ),
            );
          }
          if (sem == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT2114',
                        'IT2122',
                        'IT2133',
                        'IT2143',
                        'IT2153',
                      ],
                    ),
              ),
            );
          }
          if (sem == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT2212',
                        'IT2223',
                        'IT2234',
                        'IT2244',
                        'IT2252',
                      ],
                    ),
              ),
            );
          }
          if (sem == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT3113',
                        'IT3122',
                        'IT3133',
                        'IT3143',
                        'IT3152',
                        'IT3162',
                      ],
                    ),
              ),
            );
          }
          if (sem == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT3213',
                        'IT3223',
                        'IT3232',
                        'IT3243',
                        'IT3252',
                        'IT3262',
                      ],
                    ),
              ),
            );
          }
          if (sem == 7) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'IT4113',
                        'IT4123',
                        'IT4133',
                        'IT4142',
                        'IT4153',
                        'EL4112',
                        'EL4122',
                        'EL4132',
                        'EL4142',
                        'EL4152',
                        'EL4162',
                        'EL4172',
                        'EL4182',
                        'EL4192',
                      ],
                    ),
              ),
            );
          }
          if (sem == 8) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: ['IT4216', 'IT4226'],
                    ),
              ),
            );
          }
        }
        //-------------------------------//
        if (studentcourse == "AMC") {
          if (sem == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA1113',
                        'PMA1113',
                        'STA1113',
                        'CSC1113',
                        'CSC1123',
                      ],
                    ),
              ),
            );
          }
          if (sem == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA1213',
                        'PMA1213',
                        'STA1213',
                        'CSC1213',
                        'CSC1223',
                      ],
                    ),
              ),
            );
          }
          if (sem == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA2113',
                        'AMA2122',
                        'PMA2113',
                        'STA2113',
                        'CSC2113',
                        'CSC2122',
                      ],
                    ),
              ),
            );
          }
          if (sem == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA2213',
                        'STA2213',
                        'CSC2212',
                        'CSC2222',
                        'CSC2234',
                      ],
                    ),
              ),
            );
          }
          if (sem == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA3113',
                        'AMA3122',
                        'STA3113',
                        'CSC3112',
                        'CSC3123',
                        'CSC3132',
                      ],
                    ),
              ),
            );
          }
          if (sem == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA3213',
                        'PMA3213',
                        'STA3212',
                        'CSC3213',
                        'CSC3222',
                      ],
                    ),
              ),
            );
          }
        }
        //-------------------------------//
        if (studentcourse == "CS") {
          if (sem == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA1113',
                        'PMA1113',
                        'STA1113',
                        'CSC1113',
                        'CSC1123',
                      ],
                    ),
              ),
            );
          }
          if (sem == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA1213',
                        'PMA1213',
                        'STA1213',
                        'CSC1213',
                        'CSC1223',
                      ],
                    ),
              ),
            );
          }
          if (sem == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA2113',
                        'AMA2122',
                        'PMA2113',
                        'STA2113',
                        'CSC2113',
                        'CSC2122',
                      ],
                    ),
              ),
            );
          }
          if (sem == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA2213',
                        'STA2213',
                        'CSC2212',
                        'CSC2222',
                        'CSC2234',
                      ],
                    ),
              ),
            );
          }
          if (sem == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'AMA3122',
                        'CSC3112',
                        'CSC3123',
                        'CSC3132',
                        'CSH3153',
                        'CSH3163',
                      ],
                    ),
              ),
            );
          }
          if (sem == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'CSC3213',
                        'CSC3222',
                        'CSH3242',
                        'CSH3254',
                        'CSH3273',
                        'CSH3273',
                      ],
                    ),
              ),
            );
          }
          if (sem == 7) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'CSH4112',
                        'CSH4123',
                        'CSH4133',
                        'CSH4144',
                        'CSH4152',
                        'CSH4162',
                        'CSH4173',
                      ],
                    ),
              ),
            );
          }
          if (sem == 8) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: ['CSH4216', 'CSH4226'],
                    ),
              ),
            );
          }
        }

        //BIO
        //-------------------------------//
        if (studentcourse == "BIO") {
          if (sem == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS1112',
                        'ENS1121',
                        'ENS1132',
                        'ENS1142',
                        'ENS1162',
                        'CCU1113',
                      ],
                    ),
              ),
            );
          }
          if (sem == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS1212',
                        'ENS1223',
                        'ENS1232',
                        'ENS1242',
                        'ENS1253',
                      ],
                    ),
              ),
            );
          }
          if (sem == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS2112',
                        'ENS2123',
                        'ENS2132',
                        'ENS2142',
                        'ENS2152',
                        'ENS2162',
                        'ENS2172',
                      ],
                    ),
              ),
            );
          }
          if (sem == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS2213',
                        'ENS2222',
                        'ENS2233',
                        'ENS2242',
                        'ENS2252',
                        'ENS2263',
                      ],
                    ),
              ),
            );
          }
          if (sem == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS3113',
                        'ENS3122',
                        'ENS3132',
                        'ENS3143',
                        'ENS3153',
                        'ENS3162',
                      ],
                    ),
              ),
            );
          }
          if (sem == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS3213',
                        'ENS3222',
                        'ENS3232',
                        'ENS3242',
                        'ENS3251',
                        'ENS3262',
                        'ENS3273',
                      ],
                    ),
              ),
            );
          }
          if (sem == 7) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS4112',
                        'ENS4122',
                        'ENS4133',
                        'ENS4142',
                        'ENS4152',
                        'ENS4163',
                        'ENS4173',
                        'ENS4183',
                        'ENS4192',
                        'ENS41(10)2',
                        'ENS41(11)3',
                      ],
                    ),
              ),
            );
          }
          if (sem == 8) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'ENS4211',
                        'ENS4226',
                        'ENS4232',
                        'ENS4242',
                        'ENS4252',
                      ],
                    ),
              ),
            );
          }
        }

        //TECH
        //-------------------------------//
        if (studentcourse == "Tech") {
          if (sem == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT1114',
                        'TICT1123',
                        'TICT1134',
                        'TICT1142',
                        'TICT1152',
                      ],
                    ),
              ),
            );
          }
          if (sem == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT1212',
                        'TICT1224',
                        'TICT1233',
                        'TICT1243',
                        'TICT1252',
                        'TICT1261',
                      ],
                    ),
              ),
            );
          }
          if (sem == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT2113',
                        'TICT2122',
                        'TICT2134',
                        'TICT2142',
                        'TICT2153',
                      ],
                    ),
              ),
            );
          }
          if (sem == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT2212',
                        'TICT2222',
                        'TICT2233',
                        'TICT2244',
                        'TICT2252',
                        'TICT2263',
                      ],
                    ),
              ),
            );
          }
          if (sem == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT3113',
                        'TICT3123',
                        'TICT3132',
                        'TICT3142',
                        'TICT3153',
                        'TICT3162',
                      ],
                    ),
              ),
            );
          }
          if (sem == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT3214',
                        'TICT3222',
                        'TICT3232',
                        'TICT3243',
                        'TICT3252',
                        'TICT3262',
                      ],
                    ),
              ),
            );
          }
          if (sem == 7) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: ['TICT4116', 'TICT4126'],
                    ),
              ),
            );
          }
          if (sem == 8) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => SemesterResults(
                      studentId: studentId,
                      semester: sem,
                      courseCodes: [
                        'TICT4213',
                        'TICT4223',
                        'TICT4233',
                        'TICT4242',
                        'TICT4253',
                        'TICT4262',
                        'TICT4272',
                      ],
                    ),
              ),
            );
          }
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 45, 100, 107),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        minimumSize: Size(width * 0.35, height * 0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
      ),
      child: Text(name, style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
