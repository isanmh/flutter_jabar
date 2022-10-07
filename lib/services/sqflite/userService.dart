import 'package:flutterv3/helpers/sqflite/repository.dart';
import 'package:flutterv3/models/sqflite/User.dart';

class UserService {
  late Repository _repository;
  // koneksi ke database lewat repo
  UserService() {
    _repository = Repository();
  }

  // save service user /insert into user values (usermap)
  SaveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

  // get All / SELECT *
  readAllUser() async {
    return await _repository.readData('users');
  }

  // edit / update user
  updateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  // delete user service
  deleteUser(userId) async {
    return await _repository.deleteDatabyId('users', userId);
  }
}
