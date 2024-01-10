import 'package:dash_board/controller/parent/parent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../../../../../../model/meeting_model.dart';

class TableCalendar extends StatelessWidget {
  const TableCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Get.find<ParentController>().fetchAllMeetings(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return SfCalendar(
            view: CalendarView.month,
            showDatePickerButton: true,
            headerStyle: const CalendarHeaderStyle(
              textAlign: TextAlign.center,
            ),
            viewHeaderHeight: 60,
            dataSource: MeetingDataSource(snapshot.data ?? []),
            monthViewSettings: const MonthViewSettings(
              dayFormat: 'EEE',
              showAgenda: true,
            ),
          );
        });
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  // @override
  // Color getColor(int index) {
  //   return _getMeetingData(index).background;
  // }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}
