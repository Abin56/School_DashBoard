
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';

class StudentDashBoardScreen extends StatelessWidget {
  const StudentDashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      color: const Color.fromARGB(255, 240, 241, 243),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                TextFontWidget(text: "Welcome Student!", fontsize: 22,fontWeight: FontWeight.w500,),
                Spacer(),
                Row(
                  children: [
                    TextFontWidget(text: "Home / ", fontsize: 16),
                     TextFontWidget(text: "Student", fontsize: 16),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 15),
              child: Row(children: [
                // Container(
                //   height: 140,
                //   width: 330,
                //   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                // )
        
              ],),
            )

          ],
        ),
      ),
    );
  }
}