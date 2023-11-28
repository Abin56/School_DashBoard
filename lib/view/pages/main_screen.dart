import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

import 'home/users_panel/parent_panel/parent_home.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: ResponsiveWebSite(
              mobile: ParentHomeScreen(),
              tablet: ParentHomeScreen(),
              desktop: ParentHomeScreen())),
    );
  }
}
