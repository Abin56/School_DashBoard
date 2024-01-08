import 'package:dash_board/controller/student/student_controller.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/widgets/notice_display.dart';
import 'package:dash_board/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StdNoticeBoardContainer extends StatelessWidget {
  const StdNoticeBoardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: ResponsiveWebSite.isTablet(context) ? 450 : 600,
        height: 470,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 20),
              child: Row(
                children: [
                  TextFontWidget(
                    text: "Notice Board",
                    fontsize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.black38,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: FutureBuilder(
                    future: Get.find<StudentController>().fetchAllNotice(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            return NoticeDisplayContainer(
                              screensize: screensize,
                              text: snapshot.data?[index].heading,
                              //color: colorList[index],
                              text1: snapshot.data?[index].subject,
                              text2: snapshot.data?[index].venue,
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: snapshot.data?.length ?? 0);
                    }),
              ),
            ),

            // NoticeDisplayContainer(screensize: screensize,
            // text: "16 June,2023",
            // color: const Color.fromARGB(255, 251,213,64),
            // text1: "All PTA members meeting is there",
            // text2: "Principal",
            // ),
            // NoticeDisplayContainer(screensize: screensize,
            // text: "16 June,2023",
            // color: const Color.fromARGB(255, 249,57,161),
            // text1: "School anniversary is coming",
            // text2: "Principal",
            // ),
          ],
        ),
      ),
    );
  }
}

List<Color> colorList = [
  const Color.fromARGB(255, 64, 223, 205),
  const Color.fromARGB(255, 251, 213, 64),
  const Color.fromARGB(255, 249, 57, 161),
  const Color.fromARGB(255, 55, 81, 254)
];

List<String> text = [
  '16 June,2023',
  '16 June,2023',
  '16 June,2023',
  '16 June,2023'
];
List<String> text1 = [
  "School functions are coming so Get Ready",
  "All PTA members meeting is there",
  "School anniversary is coming",
  "Sports is coming"
];
List<String> text2 = ["Principal", "Principal", "Principal", "Principal"];
