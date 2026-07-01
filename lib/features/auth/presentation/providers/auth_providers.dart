
import 'package:evara_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:evara_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:evara_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_providers.g.dart';


@riverpod
SupabaseClient supabaseClient(SupabaseClientRef  ref) {
  return Supabase.instance.client;
}

@riverpod
AuthRemoteDataSource authRemoteDataSource(AuthRemoteDataSourceRef ref) {
  return AuthRemoteDataSourceImpl(
    ref.watch(supabaseClientProvider),
  );
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(
    ref.watch(authRemoteDataSourceProvider),
  );
}