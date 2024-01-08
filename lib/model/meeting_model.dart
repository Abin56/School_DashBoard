// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:intl/intl.dart';

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
  Meeting({
    required this.eventName,
    required this.from,
    required this.to,
    required this.isAllDay,
  });

  factory Meeting.fromMap(Map<String, dynamic> map) {
    return Meeting(
      eventName: map['heading'] as String,
      from: DateFormat("dd-MM-yyyy").parse(map['date']),
      to: DateFormat("dd-MM-yyyy").parse(map['date']),
      isAllDay: map['isAllDay'] ?? true,
    );
  }

  @override
  bool operator ==(covariant Meeting other) {
    if (identical(this, other)) return true;

    return other.eventName == eventName &&
        other.from == from &&
        other.to == to &&
        other.isAllDay == isAllDay;
  }

  @override
  int get hashCode {
    return eventName.hashCode ^ from.hashCode ^ to.hashCode ^ isAllDay.hashCode;
  }

  Meeting copyWith({
    String? eventName,
    DateTime? from,
    DateTime? to,
    bool? isAllDay,
  }) {
    return Meeting(
      eventName: eventName ?? this.eventName,
      from: from ?? this.from,
      to: to ?? this.to,
      isAllDay: isAllDay ?? this.isAllDay,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventName': eventName,
      'from': from.millisecondsSinceEpoch,
      'to': to.millisecondsSinceEpoch,
      'isAllDay': isAllDay,
    };
  }

  String toJson() => json.encode(toMap());

  factory Meeting.fromJson(String source) =>
      Meeting.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meeting(eventName: $eventName, from: $from, to: $to, isAllDay: $isAllDay)';
  }
}
