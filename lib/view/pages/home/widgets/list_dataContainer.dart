
// ignore_for_file: must_be_immutable, file_names

import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';


class ListDataContainerWidget extends StatelessWidget {
  String text;
  double height;
  double width;
   ListDataContainerWidget({
     required this.text,
    required this.height,
        required this.width,
   
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.pink.withOpacity(0.2),
      height: height,
      width: width,
      child: Center(
        child: TextFontWidget(
          text: text,
          fontsize: 12,
        ),
      ),
    );
  }
}