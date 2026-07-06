import 'package:evara_app/features/auth/data/models/app_user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<AppUserModel> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String email,
    required String password,
    required String name,
  });

  Future<void>logout();

  Future<AppUserModel?> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabase;
  AuthRemoteDataSourceImpl(this.supabase);

  @override
  Future<AppUserModel> login({
    required String email,
    required String password, 
  }) async {
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      final user = response.user;

      if (user == null) {
        throw Exception('Login failed');
      }
      final profile = await supabase.from('profiles').select().eq('id', user.id).single();
      return AppUserModel.fromJson(profile);
  }

  @override
  Future<void> register({
    required String email, 
    required String password, 
    required String name}) async {
      await supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'display_name' : name,
        },
      );
  }

  @override
  Future<void> logout() async {
    throw UnimplementedError();
  }

  @override
  Future<AppUserModel?> getCurrentUser() async {
    final user = supabase.auth.currentUser;
    if (user == null) {
      return null;
    }

    final profile = await supabase.from('profiles').select().eq('id', user.id).single();

    return AppUserModel.fromJson(profile);
  }

  

}