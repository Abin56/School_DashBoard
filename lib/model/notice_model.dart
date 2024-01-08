// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NoticeModel {
  String? chiefGuest;
  String? customContent;
  String? dateOfSubmission;
  String? dateofoccation;
  String? heading;
  String? imageUrl;
  String? noticeId;
  String? publishedDate;
  String? signedBy;
  String? signedImageUrl;
  String? subject;
  String? venue;
  bool? visibleGuardian;
  bool? visibleStudent;
  bool? visibleTeacher;
  NoticeModel({
    this.chiefGuest,
    this.customContent,
    this.dateOfSubmission,
    this.dateofoccation,
    this.heading,
    this.imageUrl,
    this.noticeId,
    this.publishedDate,
    this.signedBy,
    this.signedImageUrl,
    this.subject,
    this.venue,
    this.visibleGuardian,
    this.visibleStudent,
    this.visibleTeacher,
  });

  NoticeModel copyWith({
    String? chiefGuest,
    String? customContent,
    String? dateOfSubmission,
    String? dateofoccation,
    String? heading,
    String? imageUrl,
    String? noticeId,
    String? publishedDate,
    String? signedBy,
    String? signedImageUrl,
    String? subject,
    String? venue,
    bool? visibleGuardian,
    bool? visibleStudent,
    bool? visibleTeacher,
  }) {
    return NoticeModel(
      chiefGuest: chiefGuest ?? this.chiefGuest,
      customContent: customContent ?? this.customContent,
      dateOfSubmission: dateOfSubmission ?? this.dateOfSubmission,
      dateofoccation: dateofoccation ?? this.dateofoccation,
      heading: heading ?? this.heading,
      imageUrl: imageUrl ?? this.imageUrl,
      noticeId: noticeId ?? this.noticeId,
      publishedDate: publishedDate ?? this.publishedDate,
      signedBy: signedBy ?? this.signedBy,
      signedImageUrl: signedImageUrl ?? this.signedImageUrl,
      subject: subject ?? this.subject,
      venue: venue ?? this.venue,
      visibleGuardian: visibleGuardian ?? this.visibleGuardian,
      visibleStudent: visibleStudent ?? this.visibleStudent,
      visibleTeacher: visibleTeacher ?? this.visibleTeacher,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chiefGuest': chiefGuest,
      'customContent': customContent,
      'dateOfSubmission': dateOfSubmission,
      'dateofoccation': dateofoccation,
      'heading': heading,
      'imageUrl': imageUrl,
      'noticeId': noticeId,
      'publishedDate': publishedDate,
      'signedBy': signedBy,
      'signedImageUrl': signedImageUrl,
      'subject': subject,
      'venue': venue,
      'visibleGuardian': visibleGuardian,
      'visibleStudent': visibleStudent,
      'visibleTeacher': visibleTeacher,
    };
  }

  factory NoticeModel.fromMap(Map<String, dynamic> map) {
    return NoticeModel(
      chiefGuest: map['chiefGuest'] != null ? map['chiefGuest'] as String : "",
      customContent:
          map['customContent'] != null ? map['customContent'] as String : "",
      dateOfSubmission: map['dateOfSubmission'] != null
          ? map['dateOfSubmission'] as String
          : "",
      dateofoccation:
          map['dateofoccation'] != null ? map['dateofoccation'] as String : "",
      heading: map['heading'] != null ? map['heading'] as String : "",
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : "",
      noticeId: map['noticeId'] != null ? map['noticeId'] as String : "",
      publishedDate:
          map['publishedDate'] != null ? map['publishedDate'] as String : "",
      signedBy: map['signedBy'] != null ? map['signedBy'] as String : "",
      signedImageUrl:
          map['signedImageUrl'] != null ? map['signedImageUrl'] as String : "",
      subject: map['subject'] != null ? map['subject'] as String : "",
      venue: map['venue'] != null ? map['venue'] as String : "",
      visibleGuardian: map['visibleGuardian'] != null
          ? map['visibleGuardian'] as bool
          : false,
      visibleStudent:
          map['visibleStudent'] != null ? map['visibleStudent'] as bool : false,
      visibleTeacher:
          map['visibleTeacher'] != null ? map['visibleTeacher'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory NoticeModel.fromJson(String source) =>
      NoticeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NoticeModel(chiefGuest: $chiefGuest, customContent: $customContent, dateOfSubmission: $dateOfSubmission, dateofoccation: $dateofoccation, heading: $heading, imageUrl: $imageUrl, noticeId: $noticeId, publishedDate: $publishedDate, signedBy: $signedBy, signedImageUrl: $signedImageUrl, subject: $subject, venue: $venue, visibleGuardian: $visibleGuardian, visibleStudent: $visibleStudent, visibleTeacher: $visibleTeacher)';
  }

  @override
  bool operator ==(covariant NoticeModel other) {
    if (identical(this, other)) return true;

    return other.chiefGuest == chiefGuest &&
        other.customContent == customContent &&
        other.dateOfSubmission == dateOfSubmission &&
        other.dateofoccation == dateofoccation &&
        other.heading == heading &&
        other.imageUrl == imageUrl &&
        other.noticeId == noticeId &&
        other.publishedDate == publishedDate &&
        other.signedBy == signedBy &&
        other.signedImageUrl == signedImageUrl &&
        other.subject == subject &&
        other.venue == venue &&
        other.visibleGuardian == visibleGuardian &&
        other.visibleStudent == visibleStudent &&
        other.visibleTeacher == visibleTeacher;
  }

  @override
  int get hashCode {
    return chiefGuest.hashCode ^
        customContent.hashCode ^
        dateOfSubmission.hashCode ^
        dateofoccation.hashCode ^
        heading.hashCode ^
        imageUrl.hashCode ^
        noticeId.hashCode ^
        publishedDate.hashCode ^
        signedBy.hashCode ^
        signedImageUrl.hashCode ^
        subject.hashCode ^
        venue.hashCode ^
        visibleGuardian.hashCode ^
        visibleStudent.hashCode ^
        visibleTeacher.hashCode;
  }
}
