// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:easy_localization/easy_localization.dart';
//
// import '../../../barrel.dart';
//
// class ServerMaintenanceInterceptor extends Interceptor {
//   ServerMaintenanceInterceptor();
//
//   @override
//   Future<void> onError(
//       DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 503 &&
//         err.response?.data['code'] == 'SY01') {
//       BasicDialog.show(
//           context: RouterConfiguration.navigatorKey.currentContext!,
//           title: TextManager.serviceMaintenanceTitle.tr(),
//           contents: TextManager.serviceMaintenanceMessage.tr(),
//           confirmAction: () {
//             exit(0);
//           });
//     } else {
//       handler.next(err);
//     }
//   }
// }
