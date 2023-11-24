import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/Exam_progress_part/Mystudy_progress.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/HomeWork_details/homework_showing.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/HomeWork_details/homework_status.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/Student_details/student_details.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/calender/calendar.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/graph/std_subject_result.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/notice_board/notice_board.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class StudentDashBoardScreen extends StatelessWidget {
  const StudentDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1500,
      color: const Color.fromARGB(255, 240, 241, 243),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 0, right: 10),
          child: ResponsiveWebSite.isMobile(context)
              ? Column(
                  children: [
                    const StudentsDetailsPart(),
                    Column(
                      children: [
                        const MyStudyProgressContainerWidget(),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              height: 300,
                              width: double.infinity,
                              color: Colors.white,
                              child: const SubjectWiseProgressBarStd()),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 450,
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: CalenderViewContainer(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: HomeWorkShowingContainer(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: HomeWorkStatusContainer(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: NoticeBoardContainer(),
                    ),
                  ],
                )
              : ResponsiveWebSite.isTablet(context)
                  ? Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                children: [
                                  const StudentsDetailsPart(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: [
                                        const MyStudyProgressContainerWidget(),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 250,
                                          width: MediaQuery.of(context).size.width/2.6,
                                          color: Colors.white,
                                          child:
                                              const SubjectWiseProgressBarStd(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const Spacer(),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1, child: HomeWorkShowingContainer()),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: HomeWorkStatusContainer(),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: NoticeBoardContainer(),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 10),
                                child: Container(
                                  height: ResponsiveWebSite.isTablet(context)
                                      ? 470
                                      : 420,
                                  color: Colors.white,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: CalenderViewContainer(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                children: [
                                  const StudentsDetailsPart(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: [
                                        const MyStudyProgressContainerWidget(),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8),
                                          child: Container(
                                              height: 250,
                                              width: 420,
                                              color: Colors.white,
                                              child:
                                                  const SubjectWiseProgressBarStd()),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const Spacer(),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 420,
                                  color: Colors.white,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: CalenderViewContainer(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1, child: HomeWorkShowingContainer()),
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: HomeWorkStatusContainer(),
                                  )),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: NoticeBoardContainer(),
                            ),
                          ],
                        )
                      ],
                    ),
        ),
      ),
    );
  }
}
