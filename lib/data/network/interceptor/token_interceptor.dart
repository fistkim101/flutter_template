// import 'package:dio/dio.dart';
//
// import '../../../barrel.dart';
//
// class TokenInterceptor extends InterceptorsWrapper {
//   TokenInterceptor();
//
//   @override
//   Future<void> onError(
//       DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401 &&
//         err.response?.data['code'] == 'AU01') {
//       final String? refreshToken = await AccessManager.getRefreshToken();
//
//       if (refreshToken != null) {
//         try {
//           Response response = await Injector.apiClient
//               .put('/user/token/refresh?refreshToken=$refreshToken');
//
//           final String newAccessToken = response.data['accessToken'];
//           final String newRefreshToken = response.data['refreshToken'];
//           await AccessManager.replaceTokens(
//               accessToken: newAccessToken, refreshToken: newRefreshToken);
//
//           // 원래의 요청을 재실행
//           RequestOptions requestOptions = err.requestOptions;
//           requestOptions.headers['access-token'] = 'Bearer $newAccessToken';
//
//           Response newResponse = await Injector.apiClient.request(
//             requestOptions.path,
//             queryParameters: requestOptions.queryParameters,
//             options: Options(
//               method: requestOptions.method,
//               headers: requestOptions.headers,
//               responseType: requestOptions.responseType,
//               contentType: requestOptions.contentType,
//               extra: requestOptions.extra,
//             ),
//             data: requestOptions.data,
//           );
//
//           handler.resolve(newResponse);
//         } catch (exception) {
//           // 토큰 재발급 실패시 로직 처리
//           handler.next(err);
//         }
//       }
//     } else {
//       handler.next(err);
//     }
//   }
// }
