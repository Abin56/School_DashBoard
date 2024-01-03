import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class AdminRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, int>> getSchoolAllStudentsCount() async {
    try {
      Map<String, int> allStudentsData = {};
      int male = 0;
      int female = 0;
      final studentsCount = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('AllStudents')
          .get();

      for (var element in studentsCount.docs) {
        if (element.data()["gender"] == "Female") {
          female = female + 1;
        }
        if (element.data()["gender"] == "Male") {
          male = male + 1;
        }
      }
      int total = male + female;
      allStudentsData = {"male": male, "female": female, "total": total};

      return allStudentsData;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return {};
    }
  }

  Future<int> getSchoolAllParentsCount() async {
    try {
      int count = 0;
      final allClass = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('2024-June-2025-March')
          .doc('2024-June-2025-March')
          .collection('classes')
          .get();
      for (var element in allClass.docs) {
        final students = await _firestore
            .collection('SchoolListCollection')
            .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
            .collection('2024-June-2025-March')
            .doc('2024-June-2025-March')
            .collection('classes')
            .doc(element.data()["docid"])
            .collection('ParentCollection')
            .get();
        count = count + students.docs.length;
      }
      return count;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return 0;
    }
  }

  Future<int> getSchoolAllTeachersCount() async {
    try {
      final studentsCount = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('Teachers')
          .get();
      return studentsCount.docs.length;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return 0;
    }
  }

  Future<int> getSchoolAllStaffsCount() async {
    try {
      final studentsCount = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('Staffs')
          .get();
      return studentsCount.docs.length;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return 0;
    }
  }

//this calculation fetch students attendance data with second period same day
  Future<Map<String, int>> attendancePercentage() async {
    int present = 0;
    int absent = 0;

    try {
      final schoolDoc = _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2');
      final classesDoc = schoolDoc.collection('2024-June-2025-March');

      final allClass = await classesDoc
          .doc('2024-June-2025-March')
          .collection('classes')
          .get();

      for (var classDoc in allClass.docs) {
        final attendanceDoc = classesDoc
            .doc('2024-June-2025-March')
            .collection('classes')
            .doc(classDoc.data()['docid'])
            .collection('Attendence')
            .doc('September-2023')
            .collection('September-2023')
            .doc('05-09-2023')
            .collection('Subjects');

        final allSubjects = await attendanceDoc.get();

        if (allSubjects.docs.isNotEmpty) {
          final presentList = await attendanceDoc
              .doc(allSubjects.docs[0].data()[
                  'docid']) //there is lot subjects so taken first period subject attendance as main attendance
              .collection('PresentList')
              .get();
          for (var presentElement in presentList.docs) {
            if (presentElement.data()['present']) {
              present++;
            } else {
              absent++;
            }
          }
        }
      }
      final Map<String, int> attendanceMap = <String, int>{
        "present": present,
        "absent": absent,
        "total": present + absent
      };
      return attendanceMap;
    } catch (e) {
      log(e.toString(), name: 'AttendanceRepository - attendancePercentage');
      return {};
    }
  }
}
