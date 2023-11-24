import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/users_panel/teachers_panel/pages/teacher_dash_board/teaching_activity/teaching_activity.dart';
import 'package:flutter/material.dart';

import 'teacher_class_attendence_graph_container/teacher_class_attendence.dart';
import 'teacher_classes_students_details/teacher_classes_students_details.dart';
import 'teacher_exam_details/teacher_exam_details.dart';

class TeacherDashBoardScreen extends StatelessWidget {
  const TeacherDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: 900,
      color: const Color.fromARGB(138, 245, 247, 249),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: TextFontWidget(
                text: "Welcome Teacher ",
                fontsize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeacherClassesStudentsDetails(
                  categorytext: 'Total Classes',
                  currentcount: "04",
                  totalcount: "06",
                  imagepath: "assests/images/leptonlogo.png",
                ),
                TeacherClassesStudentsDetails(
                  categorytext: 'Total Students',
                  currentcount: "40",
                  totalcount: "60",
                  imagepath: "assests/images/leptonlogo.png",
                ),
                TeacherClassesStudentsDetails(
                  categorytext: 'Total Lessons',
                  currentcount: "30",
                  totalcount: "50",
                  imagepath: "assests/images/leptonlogo.png",
                ),
                TeacherClassesStudentsDetails(
                  categorytext: 'Total Hours',
                  currentcount: "15",
                  totalcount: "20",
                  imagepath: "assests/images/leptonlogo.png",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeacherClassAttendence(),
                TeacherExamDetails(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: TeachingActivity(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 300,
                width: 750,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
