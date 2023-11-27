import 'package:flutter/material.dart';

import '../../../../../../../../colors/colors.dart';
import '../../../../../../../../fonts/google_poppins.dart';

class ParentProfileWidget extends StatelessWidget {
  const ParentProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                                color: cWhite,
                                // width: 565,
                                height: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10),
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          top: 10,
                                        ),
                                        child: CircleAvatar(
                                          radius: 60,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 60, left: 10),
                                        child: Column(
                                          children: [
                                            GooglePoppinsWidgets(
                                              text: "Neena V",
                                              fontsize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            GooglePoppinsWidgets(
                                                text: "Thursday ,Nov 23 2023",
                                                fontsize: 10),
                                          ],
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              );
  }
}