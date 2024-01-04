import 'package:dash_board/repository/admin/teacher_repository.dart';

class TeacherController {
  final TeacherRepository _repository = TeacherRepository();

  Future<Map<String, Map<String,int>>> getSchoolAllStudentsCount() async {
    return await _repository.fetchClassWiseAttendance();
  }


}