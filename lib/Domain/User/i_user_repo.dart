import 'package:emergency_app/Domain/User/Model/user_model/user_model.dart';

abstract class IUserRepository {
  Future<void> signInUser(
      {required String email,
      required String password,
      required UserModel user});
  Future<void> loginInUser({
    required String email,
    required String password,
  });
  Future<void> logOutUser();
}
