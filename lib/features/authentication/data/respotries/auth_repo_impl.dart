import 'package:bankcredit/features/authentication/domain/respotries/auth_repo.dart';

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
  Future loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }
}
