import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/sections/attendence/others/others_attendence.dart';
import 'package:dash_board/view/pages/home/sections/attendence/total_students_attendence.dart';
import 'package:dash_board/view/pages/home/sections/exam_status/exam_status.dart';
import 'package:dash_board/view/pages/home/sections/totalStudent_graph/totalStudent.dart';
import 'package:dash_board/view/pages/home/sections/total_members/total_members_section.dart';
import 'package:flutter/material.dart';

class DashBoardSections extends StatelessWidget {
  const DashBoardSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: const Color.fromARGB(255, 240, 241, 243),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: TextFontWidget(
                  text: 'Admin Dashboard',
                  fontsize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 30),
                child: TotalMembersSection(),

                ///.............. Total Members Section
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 20, right: 10),
                    child: SizedBox(
                      height: 500,
                      width: 500,
                      child:
                          TotalStudentAttendanceContainer(), /////////....................Students Attendance
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 10),
                    child:
                        OthersTodayAttendanceContainer(), /////////........ Others --- Attendance
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 30, top: 20, right: 15),
                    child: SizedBox(
                      height: 500,
                      child: TotalStudentContainer(),
                    ),
                  ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 10),
                child: SizedBox(
                  height: 600,
                  child: ExamStatusContainer(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
