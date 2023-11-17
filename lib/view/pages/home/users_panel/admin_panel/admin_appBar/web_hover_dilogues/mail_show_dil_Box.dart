import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/pages/home/widgets/show_dilogue_widget.dart';
import 'package:flutter/material.dart';

appBarMailBox(BuildContext context) => getShowDilogueBox(
        context: context,
        title: Container(
          color: const Color.fromARGB(255, 42, 215, 197),
          width: 500,
          height: 40,
          child: const Center(
            child: Text(
              'All Messages',
              style: TextStyle(
                fontSize: 16,
                color: cWhite,
              ),
            ),
          ),
        ),
        children: [
          Container(
            color: themeColorGreen.withOpacity(0.1),
            width: 500,
            height: 300,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 05,
                      ),
                      title: Text(
                        'Title',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Messages',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 20),
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
