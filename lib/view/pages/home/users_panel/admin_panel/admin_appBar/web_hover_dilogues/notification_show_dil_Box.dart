import 'package:dash_board/view/colors/colors.dart';
import 'package:dash_board/view/pages/home/widgets/show_dilogue_widget.dart';
import 'package:flutter/material.dart';

appBarNotificationBox(BuildContext context) => getShowDilogueBox(
        context: context,
        title: Container(
          color: const Color.fromARGB(255, 255, 49, 49),
          width: 400,
          height: 40,
          child: const Center(
            child: Text(
              'All Notifications',
              style: TextStyle(
                fontSize: 15,
                color: cWhite,
              ),
            ),
          ),
        ),
        children: [
          Container(
            color: themeColorGreen.withOpacity(0.1),
            width: 400,
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
