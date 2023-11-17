import 'package:dash_board/view/pages/home/dash_board/teachers_panel/teachers_home.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: ResponsiveWebSite(
              mobile: TeachersHomeScreen(),
              tablet: TeachersHomeScreen(),
              desktop: TeachersHomeScreen())),
    );
  }
}
