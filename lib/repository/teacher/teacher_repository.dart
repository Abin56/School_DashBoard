import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class TeacherRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, Map<String, int>>> fetchClassWiseAttendance() async {
    try {
      Map<String, Map<String, int>> attendanceMap = {};
      int present = 0;
      int absent = 0;

      final subjectCollectionref = _firestore
          .collection('SchoolListCollection')
          .doc('cFIgPHgubMMuf5zRRqbAKeMVcKZ2')
          .collection('2023-June-2024-March')
          .doc('2023-June-2024-March')
          .collection('classes')
          .doc('LKGc04c6f80-3ffb-11ee-967e-b115466307f1')
          .collection('Attendence')
          .doc('January-2024')
          .collection('January-2024')
          .doc('03-01-2024')
          .collection('Subjects');
      final subjectCollection = await subjectCollectionref.get();

      for (var element in subjectCollection.docs) {
        final attendanceData = await subjectCollectionref
            .doc(element.data()['docid'])
            .collection('PresentList')
            .get();

        for (var students in attendanceData.docs) {
          if (students.data()['present']) {
            present++;
          }
          if (!students.data()['present']) {
            absent++;
          }
        }
        int total = present + absent;
        String period = element.data()["period"];

        attendanceMap.putIfAbsent(
            period,
            () => {
                  "present": present,
                  "absent": absent,
                  "total": total,
                });

        present = 0;
        absent = 0;
      }

      return attendanceMap;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return {};
    }
  }
}
