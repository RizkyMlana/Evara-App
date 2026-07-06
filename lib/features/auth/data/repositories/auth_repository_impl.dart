import 'package:evara_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:evara_app/features/auth/domain/entities/app_user.dart';
import 'package:evara_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<AppUser> login({
    required String email, 
    required String password}) {
    return remoteDataSource.login(
      email: email, 
      password: password,
    );
  }
  @override
  Future<void> register({
    required String email, 
    required String password,
    required String name,
  }) {
    return remoteDataSource.register(
      email: email, 
      password: password, 
      name: name
    );
  }
  @override
  Future<void> logout() {
    return remoteDataSource.logout();
  }
  @override
  Future<AppUser?> getCurrentUser() {
    return remoteDataSource.getCurrentUser();
  }

}
