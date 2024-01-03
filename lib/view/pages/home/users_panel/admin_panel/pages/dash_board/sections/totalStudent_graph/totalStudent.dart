import 'package:dash_board/controller/admin/admin_controller.dart';
import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/users_panel/admin_panel/pages/dash_board/sections/totalStudent_graph/totalstudents_graph.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../widgets/widgets.dart';

class TotalStudentContainer extends StatelessWidget {
  const TotalStudentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context) ? 320 : 420,
      decoration: BoxDecoration(
          color: cWhite, border: Border.all(color: cBlack.withOpacity(0.1))),
      child: FutureBuilder(
          future: Get.find<AdminController>().getSchoolAllStudentsCount(),
          builder: (context, snapshot) {
            bool isWaiting =
                snapshot.connectionState == ConnectionState.waiting;

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 0),
                  child: TextFontWidget(
                    text: "Students",
                    fontsize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: ResponsiveWebSite.isMobile(context) ? 200 : 300,
                  child: isWaiting
                      ? cpIndicator
                      : TotalStudentCircleGraph(
                          maleCount: snapshot.data?['male']?.toDouble() ?? 0,
                          femaleCount:
                              snapshot.data?['female']?.toDouble() ?? 0),
                ),
                SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 04,
                                  width: 60,
                                  color: const Color.fromARGB(255, 48, 79, 254),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 05),
                                child: TextFontWidget(
                                  text: 'Female Students',
                                  fontsize: 11.5,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 06),
                                child: isWaiting
                                    ? cpIndicator
                                    : TextFontWidget(
                                        text: snapshot.data?['female']
                                                ?.toString() ??
                                            '',
                                        fontsize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                              )
                            ],
                          ),
                          Container(
                            width: 01,
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 04,
                                  width: 60,
                                  color: const Color.fromARGB(255, 255, 166, 1),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 05),
                                child: TextFontWidget(
                                  text: 'Male Students',
                                  fontsize: 11.5,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 06),
                                child: isWaiting
                                    ? cpIndicator
                                    : TextFontWidget(
                                        text: snapshot.data?['male']
                                                ?.toString() ??
                                            '',
                                        fontsize: 12,
                                        color: Colors.black.withOpacity(0.4),
                                      ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
