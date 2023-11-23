import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/constant/constant.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsContainerWidget extends StatelessWidget {
  String imagepath;
  String title;
  int count;
  Color? color;
  Color? imageColor;
  double? imageradius;

  DetailsContainerWidget({
    required this.imagepath,
    this.imageColor,
    this.imageradius,
    this.color,
    required this.count,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 335,
      decoration: BoxDecoration(
          color: cWhite,
          border: Border.all(color: cBlack.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFontWidget(
                  text: title,
                  fontsize: 14,
                  color: cBlack.withOpacity(0.4),
                  fontWeight: FontWeight.w700,
                ),
                sHeight10,
                TextFontWidget(
                  text: count.toString(),
                  fontsize: 17,
                  fontWeight: FontWeight.w800,
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              width: 60,
              height: 60,
              //border: 33,
              color: const Color.fromARGB(255, 220, 235, 243),

              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  imagepath,
                  //color: imageColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
