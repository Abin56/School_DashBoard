import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';

class TeacherDashBoardScreen extends StatelessWidget {
  const TeacherDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: 900,
      color: const Color.fromARGB(255, 240, 241, 243),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 50),
              child: TextFontWidget(
                text: "Welcome Teacher ",
                fontsize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
