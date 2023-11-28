import 'package:flutter/material.dart';

import '../../../../../../../../fonts/google_poppins.dart';
import '../text feild widget/textfeildwidget.dart';

class AllExamResults extends StatelessWidget {
  const AllExamResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: GooglePoppinsWidgets(
            text: "All Exam Results",
            fontsize: 22,
          ),
        ),
        const Icon(Icons.more_horiz),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TextFormFeildWidget(text: "Search Name"),
              TextFormFeildWidget(text: "Search Class"),
              TextFormFeildWidget(text: "Search Roll"),
              Container(
                height: 40,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Colors.amber),
                child: Center(
                    child: GooglePoppinsWidgets(text: "Search", fontsize: 16)),
              ),
            ],
          ),
        )
      ],
    );
  }
}