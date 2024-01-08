import 'package:dash_board/model/notice_model.dart';

import '../../model/meeting_model.dart';
import '../../repository/student/student_repository.dart';

class StudentController {
  StudentRepository repository = StudentRepository();

  Future<List<NoticeModel>> fetchAllNotice() async {
    return await repository.getAllAdminNotice();
  }

  Future<List<Meeting>> fetchAllMeetings() async {
    return await repository.getAllAdminMeetings();
  }
}
