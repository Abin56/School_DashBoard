import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/sections/attendence/others/others_attendence.dart';
import 'package:dash_board/view/pages/home/sections/attendence/total_students_attendence.dart';
import 'package:dash_board/view/pages/home/sections/exam_status/exam_status.dart';
import 'package:dash_board/view/pages/home/sections/totalStudent_graph/totalStudent.dart';
import 'package:dash_board/view/pages/home/sections/total_members/total_members_section.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
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
                padding: const EdgeInsets.only(left: 25, top: 25),
                child: TextFontWidget(
                  text: 'Admin Dashboard',
                  fontsize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 25,
                    left: ResponsiveWebSite.isMobile(context) ? 05 : 10),
                child: const TotalMembersSection(),

                ///.............. Total Members Section
              ),
              ResponsiveWebSite.isMobile(context)
                  ? const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: TotalStudentAttendanceContainer(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child:
                              OthersTodayAttendanceContainer(), /////////........ Others --- Attendance
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 0, left: 0),
                          child: TotalStudentContainer(),
                        ),
                      ],
                    )
                  : const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 0, left: 10),
                            child: TotalStudentAttendanceContainer(),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 0, left: 10),
                            child:
                                OthersTodayAttendanceContainer(), /////////........ Others --- Attendance
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 0, left: 10),
                            child: TotalStudentContainer(),
                          ),
                        ],
                      ),
                    ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: ExamStatusContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
