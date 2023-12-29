import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class AdminRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<int> getSchoolAllStudentsCount() async {
    try {
      final studentsCount = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('AllStudents')
          .get();
      return studentsCount.docs.length;
    } catch (e) {
      log(e.toString(),
          name: 'AttendanceRepository - getSchoolAllStudentsCount');
      return 0;
    }
  }

  Future<int> getSchoolAllParentsCount() async {
    try {
      final studentsCount = await _firestore
          .collection('SchoolListCollection')
          .doc('0OdOkV1YzEab2BuGRtv4q9qcyfU2')
          .collection('Parents')
          .get();
      return studentsCount.docs.length;
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
}
