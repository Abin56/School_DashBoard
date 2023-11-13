import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/sections/totalStudent_graph/totalstudents_graph.dart';
import 'package:flutter/material.dart';

class TotalStudentContainer extends StatelessWidget {
  const TotalStudentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: cWhite, border: Border.all(color: cBlack.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: TextFontWidget(
              text: "Students",
              fontsize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 400,
            child: TotalStudentCircleGraph(),
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
                          padding: const EdgeInsets.only(right: 10, top: 05),
                          child: TextFontWidget(
                            text: 'Female Students',
                            fontsize: 11.5,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 06),
                          child: TextFontWidget(
                            text: '500',
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
                          padding: const EdgeInsets.only(left: 15, top: 05),
                          child: TextFontWidget(
                            text: 'Male Students',
                            fontsize: 11.5,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 06),
                          child: TextFontWidget(
                            text: '500',
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
      ),
    );
  }
}
