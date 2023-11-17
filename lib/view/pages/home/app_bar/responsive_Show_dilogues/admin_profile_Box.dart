import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/fonts/text_widget.dart';
import 'package:dash_board/view/pages/home/widgets/show_dilogue_widget.dart';
import 'package:flutter/material.dart';

appBarAdminBox(BuildContext context) => getShowDilogueBox(
        context: context,
        title: Container(
          color: const Color.fromARGB(255, 255, 160, 1),
          width: 200,
          height: 40,
          child: const Center(
            child: Text(
              'Steven Zone',
              style: TextStyle(
                  fontSize: 15, color: cWhite, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: cBlack.withOpacity(0.4))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Image.asset('assests/png/avathar.png'),
                        ),
                      ),
                      TextFontWidget(
                        text: 'Stevne Zone',
                        fontsize: 12,
                        color: cBlack,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: cBlack.withOpacity(0.4))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 24,
                          color: cBlack,
                        ),
                      ),
                      TextFontWidget(
                        text: 'My Profile',
                        fontsize: 12,
                        color: cBlack,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: cBlack.withOpacity(0.4))),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.power_settings_new,
                          size: 24,
                          color: cBlack,
                        ),
                      ),
                      TextFontWidget(
                        text: 'Log Ouit',
                        fontsize: 12,
                        color: cBlack,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        actions: [
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ]);
