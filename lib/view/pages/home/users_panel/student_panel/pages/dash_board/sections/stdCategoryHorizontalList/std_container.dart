import 'package:dash_board/view/pages/home/users_panel/student_panel/pages/dash_board/sections/stdCategoryHorizontalList/widget/std_details_container.dart';
import 'package:flutter/material.dart';

class StdCategoryHorizontalList extends StatelessWidget {
  const StdCategoryHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(scrollDirection: Axis.horizontal,

      child: Row(
        children: [
       
       StudentDetailsContainerWidget(imagepath: "assests/png/exam.png", text: '04/06', title:"All Courses"),
       StudentDetailsContainerWidget(imagepath: "assests/png/exam.png", text: '40/60', title:"All Projects"),
       StudentDetailsContainerWidget(imagepath: "assests/png/exam.png", text: '30/50', title:"Test Attended"),
       StudentDetailsContainerWidget(imagepath: "assests/png/exam.png", text: '15/20', title:"Test Passed"),
      ],),
    );
  }
}