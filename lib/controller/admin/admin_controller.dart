import 'package:dash_board/repository/admin/admin_repository.dart';

class AdminController {
  final AdminRepository _repository = AdminRepository();

  Future<int> getSchoolAllStudentsCount() async {
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
}
