import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/Student_details/attendence_graph.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class StudentsDetailsPart extends StatelessWidget {
  const StudentsDetailsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWebSite.isMobile(context)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 5),
                child: Container(
                  color: cWhite,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
                        child: CircleAvatar(
                          maxRadius: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFontWidget(
                              text: "Welcome, \nAnanya Sharma",
                              fontsize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                            TextFontWidget(
                                text: "Thursday, March 06 2023", fontsize: 13),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 8, bottom: 8),
                child: Container(
                    height: 120,
                    width: double.infinity,
                    color: cWhite,
                    child: const StudentsAttendanceGraphView()),
              ),
            ],
          )
        :ResponsiveWebSite.isTablet(context)? Row(
            children: [
              Container(
                height: 150,
                width:MediaQuery.of(context).size.width/1.9,
                color: cWhite,
                // decoration: const BoxDecoration(

                //     borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
                      child: CircleAvatar(
                        maxRadius: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFontWidget(
                            text: "Welcome, Ananya Sharma",
                            fontsize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          TextFontWidget(
                              text: "Thursday, March 06 2023", fontsize: 13),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width/5,
                color: cWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 120,
                        width: 200,
                        color: cWhite,
                        child: const StudentsAttendanceGraphView()),
                  ],
                ),
              ),
            ],
          )
        :Row(
            children: [
              Container(
                height: 150,
                width: 510,
                color: cWhite,
                // decoration: const BoxDecoration(

                //     borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
                      child: CircleAvatar(
                        maxRadius: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFontWidget(
                            text: "Welcome, Ananya Sharma",
                            fontsize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          TextFontWidget(
                              text: "Thursday, March 06 2023", fontsize: 13),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              Container(
                height: 150,
                width: 200,
                color: cWhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 120,
                        width: 200,
                        color: cWhite,
                        child: const StudentsAttendanceGraphView()),
                  ],
                ),
              ),
            ],
          );
  }
}
