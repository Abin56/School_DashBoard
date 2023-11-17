import 'package:flutter/material.dart';

class LGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: List<Widget>.generate(
              16,
              (index) {
                return GridTile(
                  child: Card(
                    color: Colors.red
                        ,
                  ),
                );
              },
      )));
}
}