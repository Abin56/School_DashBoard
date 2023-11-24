import 'package:dash_board/view/pages/home/users_panel/parent_panel/pages/parent_dashboard/sections/attendance/circularprogress.dart';
import 'package:dash_board/view/pages/home/users_panel/parent_panel/pages/parent_dashboard/sections/parent%20profile/parent_profile_widget.dart';
import 'package:dash_board/view/pages/home/users_panel/parent_panel/pages/parent_dashboard/sections/table%20calender/table_calender.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

import 'sections/student study analyzer/student study progress/subjectwise_graph/subjectwise_graph.dart';
import 'sections/student study analyzer/subjectwise graph/student_study_progrss.dart';

class ParentDashBoardContainer extends StatelessWidget {
  const ParentDashBoardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> parentDashBoardWidgets = [
      const ParentProfileWidget(), //  1
      SizedBox(
        height: 160,
        width: ResponsiveWebSite.isMobile(context) ? double.infinity : 200,
        child: const StudentAttendance(),// 2
      ),
      const StudentStudyProgress(),//3
      const SubjectWiseGraph(),//4
      const TableCalender()//5
      
    ];
    return Container(
      color: const Color.fromARGB(255, 240, 241, 243),
      height: 1400,
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              children: [
                parentDashBoardWidgets[0],
                parentDashBoardWidgets[1],
                parentDashBoardWidgets[2],
                parentDashBoardWidgets[3],
                parentDashBoardWidgets[4],
                
              ],
            )
          : ResponsiveWebSite.isTablet(context)
              ? Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: parentDashBoardWidgets[0]),
                        Expanded(child: parentDashBoardWidgets[1]),
                      ],
                    ),
                    Row(children: [
                      Expanded(flex: 1,
                        child: parentDashBoardWidgets[2]),
                      Expanded(flex: 3,
                        child: parentDashBoardWidgets[3]),
                         
                    ],),
                    parentDashBoardWidgets[4],
                  ],
                )
              :ResponsiveWebSite.isDesktop(context)? Column(
                  children: [
                    Expanded(flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(flex: 3,
                              child: parentDashBoardWidgets[0]),
                            Expanded(flex: 1,
                              child: parentDashBoardWidgets[
                                  1],
                            )
                          ],
                        ),
                      ),
                    ),
                   Row(children: [
                      Expanded(flex: 1,
                        child: parentDashBoardWidgets[2]),
                      Expanded(flex: 3,
                        child: parentDashBoardWidgets[3]),
                        
                    ],)
                  ],
                ):null
    );
  }
}
//SubjectWiseGraph



 // return Container(
    //     height: 1600,
    //     color: const Color.fromARGB(255, 240, 241, 243),
    //     child: ResponsiveWebSite.isMobile(context)
    //         ? Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Container(
    //                 color: cWhite,
    //                 width: 300,
    //                 height: 250,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(top: 10, left: 10),
    //                   child: Column(
    //                     children: [
    //                       const Padding(
    //                         padding: EdgeInsets.only(
    //                           left: 10,
    //                           top: 10,
    //                         ),
    //                         child: CircleAvatar(
    //                           radius: 60,
    //                         ),
    //                       ),
    //                       Padding(
    //                         padding: const EdgeInsets.only(top: 10, left: 10),
    //                         child: Column(
    //                           children: [
    //                             GooglePoppinsWidgets(
    //                               text: "Neena V",
    //                               fontsize: 18,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                             GooglePoppinsWidgets(
    //                                 text: "Thursday ,Nov 23 2023",
    //                                 fontsize: 10),
    //                           ],
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                   width: 300,
    //                   height: 250,
    //                   color: cWhite,
    //                   child: const StudentAttendance()),
    //               Container(
    //                   width: 300,
    //                   height: 250,
    //                   color: cWhite,
    //                   child: const StudentStudyProgress()),
    //               Container(
    //                   width: 300,
    //                   height: 250,
    //                   color: cWhite,
    //                   child: const SubjectWiseGraph()),
    //               Container(
    //                   width: 300,
    //                   height: 400,
    //                   color: cWhite,
    //                   child: const TableCalender()),
    //             ],
    //           )
    //         : ResponsiveWebSite.isTablet(context)
    //             ? Column(
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.only(top: 10, left: 10),
    //                     child: Row(
    //                       //  mainAxisAlignment: MainAxisAlignment.start,
    //                       children: [
    //                         Expanded(
    //                           flex: 3,
    //                           child: Padding(
    //                             padding: const EdgeInsets.only(
    //                                 top: 10, left: 10, right: 10),
    //                             child: Container(
    //                               //height: 200,
    //                               color:
    //                                   const Color.fromARGB(255, 240, 241, 243),
    //                               child: Column(
    //                                 children: [
    //                                   Row(
    //                                     mainAxisAlignment:
    //                                         MainAxisAlignment.start,
    //                                     children: [
    //                                       const Expanded(
    //                                           flex: 4,
    //                                           child: ParentProfileWidget()),
    //                                       Expanded(
    //                                         flex: 1,
    //                                         child: Container(
    //                                           color: cWhite,
    //                                           height: 160,
    //                                           child: const StudentAttendance(),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                   Row(
    //                                     children: [
    //                                       Padding(
    //                                         padding: const EdgeInsets.only(
    //                                             top: 10, left: 0),
    //                                         child: Container(
    //                                             height: 260,
    //                                             width: 200,
    //                                             color: cWhite,
    //                                             child:
    //                                                 const StudentStudyProgress()),
    //                                       ),
    //                                       Expanded(
    //                                         child: Padding(
    //                                           padding: const EdgeInsets.only(top: 10,left: 05),
    //                                           child: Container(
    //                                             height: 260,
    //                                             color:cWhite,
    //                                             child: const Padding(
    //                                               padding: EdgeInsets.all(8.0),
    //                                               child: SubjectWiseGraph(),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         Expanded(
    //                           flex: 2,
    //                           child: Padding(
    //                             padding: const EdgeInsets.only(
    //                                 top: 10, left: 10, right: 10),
    //                             child: Container(
    //                                 height: 430,
    //                                 color: cWhite,
    //                                 child: const TableCalender()),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               )
    //             : ResponsiveWebSite.isDesktop(context)
    //                 ? Column(
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.only(top: 10, left: 10),
    //                         child: Row(
    //                           //  mainAxisAlignment: MainAxisAlignment.start,
    //                           children: [
    //                             Expanded(
    //                               flex: 3,
    //                               child: Padding(
    //                                 padding: const EdgeInsets.only(
    //                                     left: 10, right: 10),
    //                                 child: Container(
    //                                   //height: 200,
    //                                   color: const Color.fromARGB(
    //                                       255, 240, 241, 243),
    //                                   child: Column(
    //                                     children: [
    //                                       Row(
    //                                         mainAxisAlignment:
    //                                             MainAxisAlignment.start,
    //                                         children: [
    //                                           const Expanded(
    //                                               flex: 4,
    //                                               child: ParentProfileWidget()),
    //                                           Expanded(
    //                                             flex: 1,
    //                                             child: Container(
    //                                               color: cWhite,
    //                                               height: 160,
    //                                               child:
    //                                                   const StudentAttendance(),
    //                                             ),
    //                                           ),
    //                                         ],
    //                                       ),
    //                                       Row(
    //                                         children: [
    //                                           Expanded(
    //                                             flex: 1,
    //                                             child: Padding(
    //                                               padding:
    //                                                   const EdgeInsets.only(
    //                                                       top: 10, left: 10),
    //                                               child: Container(
    //                                                   height: 250,
    //                                                   color: cWhite,
    //                                                   child:
    //                                                       const StudentStudyProgress()),
    //                                             ),
    //                                           ),
    //                                           Expanded(
    //                                             flex: 2,
    //                                             child: Padding(
    //                                               padding:
    //                                                   const EdgeInsets.only(
    //                                                 top: 10,
    //                                                 left: 10,
    //                                               ),
    //                                               child: Container(
    //                                                   height: 250,
    //                                                   color: cWhite,
    //                                                   child:
    //                                                       const SubjectWiseGraph()),
    //                                             ),
    //                                           ),
    //                                         ],
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             Expanded(
    //                               flex: 2,
    //                               child: Padding(
    //                                 padding: const EdgeInsets.only(
    //                                     top: 10, left: 10, right: 10),
    //                                 child: Container(
    //                                     height: 420,
    //                                     color: cWhite,
    //                                     child: const TableCalender()),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ],
    //                   )
    //                 : null);