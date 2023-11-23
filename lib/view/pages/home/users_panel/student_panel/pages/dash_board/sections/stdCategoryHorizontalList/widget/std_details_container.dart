import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/constant/constant.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:flutter/material.dart';

class StudentDetailsContainerWidget extends StatelessWidget {
 final String imagepath;
  final String title;
 final String text;
 final Color? color;
 final Color? imageColor;
 final double? imageradius;

  const StudentDetailsContainerWidget({
    required this.imagepath,
    this.imageColor,
    this.imageradius,
    this.color,
    required this.text,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        height: 108,
        width: 280,
        decoration: const BoxDecoration(
            color: cWhite, 
            //border: Border.all(color: cBlack.withOpacity(0.1)),
            borderRadius: BorderRadius.all(Radius.circular(10))),
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
                    fontsize: 15,
                    color: cBlack.withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                  ),
                  sHeight10,
                  TextFontWidget(
                    text: text,
                    fontsize: 20,
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
               // radius: 33,
               decoration: const BoxDecoration( color: Color.fromARGB(255, 234, 245, 251),borderRadius: BorderRadius.all(Radius.circular(10))),
               
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      imagepath,
                     // color: imageColor,
                  
                  ),
                ),
              ),
            ),
          
            
          ],
        ),
      ),
    );
  }
}