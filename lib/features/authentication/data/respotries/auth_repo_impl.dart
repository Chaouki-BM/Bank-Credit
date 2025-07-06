import 'package:bankcredit/features/authentication/domain/respotries/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future completeInformation({
    required String name,
    required String phoneNumber,
    required String address,
  }) {
    // TODO: implement completeInformation
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<User?> loginWithGoogle() async {
    try {
      await Supabase.instance.client.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: 'io.supabase.flutter://login-callback/', // Important!
      );
      return Supabase.instance.client.auth.currentUser;
    } catch (e) {
      print('Google Sign-in error: $e');
      return null;
    }
  }
}
