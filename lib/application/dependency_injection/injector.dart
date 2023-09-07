import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/barrel.dart';
import 'package:get_it/get_it.dart';

class Injector {
  Injector._();

  static DeviceInfoPlugin get deviceInfoPlugin =>
      GetIt.instance.get<DeviceInfoPlugin>();

  static Dio get apiClient => GetIt.instance.get<Dio>();

  static Future registerDependencies() async {
    _registerUtils();
    _registerNetworks();
    _registerRepositories();
  }

  static _registerUtils() async {
    GetIt.instance
        .registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());
  }

  static _registerNetworks() async {
    GetIt.instance.registerLazySingleton<Dio>(
      () => ApiClient(
        clientBaseUrl: Environment.baseUrl,
        customInterceptors: [
          BaseHeaderInterceptor(),
          // TokenInterceptor(),
        ],
      ),
    );
  }

  static _registerRepositories() async {}
}
