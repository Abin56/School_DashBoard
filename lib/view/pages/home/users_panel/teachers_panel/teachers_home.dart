import 'package:dash_board/controller/teacher/teacher_controller.dart';
import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/constant/constant.dart';
import 'package:dash_board/view/fonts/google_poppins.dart';
import 'package:dash_board/view/pages/home/users_panel/admin_panel/drawer/drawer_pages.dart';
import 'package:dash_board/view/pages/home/users_panel/teachers_panel/teachers_appbar/teachers_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import 'pages/teacher_dash_board/teachers_dashboard.dart';

class TeachersHomeScreen extends StatefulWidget {
  const TeachersHomeScreen({super.key});

  @override
  State<TeachersHomeScreen> createState() => _TeachersHomeScreenState();
}

class _TeachersHomeScreenState extends State<TeachersHomeScreen> {
  final TeacherController teacherController = Get.put(TeacherController());
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: SidebarDrawer(
            body: ListView(
              children: [
                const AppBarTeachersPanel(),
                pages[selectedIndex],
              ],
            ),
            drawer: Container(
              color: cWhite,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: Image.asset(
                                'assests/images/leptonlogo.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "LEPTON DUJO",
                              fontsize: 20,
                              fontWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: Text(
                          "Main Menu",
                          style: TextStyle(
                              color: cBlack.withOpacity(
                                0.4,
                              ),
                              fontSize: 12),
                        ),
                      ),
                      sHeight10,
                      DrawerSelectedPagesSection(
                        selectedIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

List<Widget> pages = [
  const TeacherDashBoardScreen(),
  Center(
    child: Text(sideMenu[1]),
  ),
  Center(
    child: Text(sideMenu[2]),
  ),
  Center(
    child: Text(sideMenu[3]),
  ),
  Center(
    child: Text(sideMenu[4]),
  ),
  Center(
    child: Text(sideMenu[5]),
  ),
  Center(
    child: Text(sideMenu[6]),
  ),
  Center(
    child: Text(sideMenu[7]),
  ),
  Center(
    child: Text(sideMenu[8]),
  ),
  Center(
    child: Text(sideMenu[9]),
  ),
  Center(
    child: Text(sideMenu[10]),
  ),
  Center(
    child: Text(sideMenu[11]),
  ),
];
List<String> sideMenu = [
  'Attendence',
  'Food Manage',
  'Rooms Manage',
  'Leave Requests',
  'Visitors Pass',
  'Students Manage',
  'Students Payment',
  'Employee Manage',
  'Bill Manage',
  'Notice Board',
  'Settings',
  'Rules',
];
