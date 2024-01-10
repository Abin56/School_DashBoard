import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_board/model/notice_model.dart';

import '../../model/meeting_model.dart';

class ParentRepository {
  //fetch all class wise notice
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<NoticeModel>> getAllAdminNotice() async {
    try {
      final allNotice = await _firestore
          .collection('SchoolListCollection')
          .doc('cFIgPHgubMMuf5zRRqbAKeMVcKZ2')
          .collection('2023-June-2024-March')
          .doc('2023-June-2024-March')
          .collection('adminNotice')
          .get();
      return allNotice.docs
          .where((element) => element.data()['visibleGuardian'] == true)
          .map((e) => NoticeModel.fromMap(e.data()))
          .toList();
    } catch (e) {
      log(e.toString(), name: 'StudentRepository - getAllClassWiseNotice');
      return [];
    }
  }

  Future<List<Meeting>> getAllAdminMeetings() async {
    try {
      final allNotice = await _firestore
          .collection('SchoolListCollection')
          .doc('cFIgPHgubMMuf5zRRqbAKeMVcKZ2')
          .collection('2023-June-2024-March')
          .doc('2023-June-2024-March')
          .collection('AdminMeeting')
          .get();
      return allNotice.docs.map((e) => Meeting.fromMap(e.data())).toList();
    } catch (e) {
      log(e.toString(), name: 'StudentRepository - getAllClassWiseNotice');
      return [];
    }
  }
}
