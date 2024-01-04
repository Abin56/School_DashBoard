import 'package:dash_board/repository/admin/admin_repository.dart';

class AdminController {
  final AdminRepository _repository = AdminRepository();

  Future<Map<String, int>> getSchoolAllStudentsCount() async {
    return await _repository.getSchoolAllStudentsCount();
  }

  Future<int> getSchoolAllTeachersCount() async {
    return await _repository.getSchoolAllTeachersCount();
  }

  Future<int> getSchoolAllParentsCount() async {
    return await _repository.getSchoolAllParentsCount();
  }

  Future<int> getSchoolAllStaffsCount() async {
    return await _repository.getSchoolAllStaffsCount();
  }

  Future<Map<String, int>> getSchoolAttendacne() async {
    return await _repository.attendancePercentage();
  }
}
