import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  Future<User?> loginWithGoogle();
  Future<User?> loginWithFacebook();
  Future completeInformation({
    required String name,
    required String phoneNumber,
    required String address,
  });
}
