import 'package:dash_board/view/pages/home/home.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: ResponsiveWebSite(
              mobile: HomeScreen(),
              tablet: HomeScreen(),
              desktop: HomeScreen())),
    );
  }
}
