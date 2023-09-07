import 'package:dio/dio.dart';

import '../../../barrel.dart';

class UserRepository {
  final Dio apiClient;
  final ConnectionManager connectionManager;

  const UserRepository({
    required this.apiClient,
    required this.connectionManager,
  });

// Future<Either<AppException, SignInResponse>> continueWithSocial(
//     ContinueWithSocialQuery continueWithSocialQuery) async {
//   bool isConnected = await connectionManager.isConnected;
//   if (!isConnected) {
//     return Left(AppException(TextManager.internetNotConnected.tr()));
//   }
//
//   final minimumLatency = Future.delayed(const Duration(milliseconds: 700));
//   final continueWithSocialRequest =
//   apiClient.post('/user', data: continueWithSocialQuery.toJson());
//
//   try {
//     await Future.wait([minimumLatency, continueWithSocialRequest]);
//   } on DioException catch (error) {
//     return Left(AppException(TextManager.continueWithSocialFailed.tr()));
//   }
//   final Response continueWithSocialResponse = await continueWithSocialRequest;
//
//   return Right(SignInResponse.fromJson(continueWithSocialResponse.data));
// }
}
