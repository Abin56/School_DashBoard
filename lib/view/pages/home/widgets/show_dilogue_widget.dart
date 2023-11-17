import 'package:flutter/material.dart';

getShowDilogueBox(
    {required BuildContext context,
    required Widget title,
    required List<Widget> children,
    List<Widget>? actions}) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        

        title: title,
        content: SingleChildScrollView(
          child: ListBody(
            children: children,
          ),
        ),
        actions: actions,
      );
    },
  );
}
