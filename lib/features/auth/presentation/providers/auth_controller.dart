
import 'package:evara_app/features/auth/domain/entities/app_user.dart';
import 'package:evara_app/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  Future<AppUser?> build() async {
    return ref.watch(authRepositoryProvider).getCurrentUser();
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return await ref.read(authRepositoryProvider).login(
        email: email,
        password: password,
      );
    });
  }
  Future<void> register({
    required String email,
    required String password,
    required String name,
  }) async {
    state = const AsyncLoading();

    try {
      await ref.read(authRepositoryProvider).register(
            email: email,
            password: password,
            name: name,
          );

      // Setelah register sukses,
      // user belum login karena email verification aktif.
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncData(null);
  }

}