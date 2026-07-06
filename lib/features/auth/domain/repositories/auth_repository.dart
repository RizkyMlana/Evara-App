import 'package:evara_app/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  Future<AppUser> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String email,
    required String password,
    required String name,
  });

  Future<void> logout();

  Future<AppUser?> getCurrentUser();

}