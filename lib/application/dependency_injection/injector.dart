import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/barrel.dart';
import 'package:get_it/get_it.dart';

class Injector {
  Injector._();

  static DeviceInfoPlugin get deviceInfoPlugin =>
      GetIt.instance.get<DeviceInfoPlugin>();

  static Dio get apiClient => GetIt.instance.get<Dio>();

  static ConnectionManager get connectionManager =>
      GetIt.instance.get<ConnectionManager>();

  static Future registerDependencies() async {
    _registerUtils();
    _registerNetworks();
    _registerRepositories();
  }

  static _registerUtils() async {
    GetIt.instance
        .registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());
    GetIt.instance.registerLazySingleton<ConnectionManager>(
        () => ConnectionManager(connectivity: Connectivity()));
  }

  static _registerNetworks() async {
    GetIt.instance.registerLazySingleton<Dio>(
      () => ApiClient(
        clientBaseUrl: Environment.baseUrl,
        customInterceptors: [
          BaseHeaderInterceptor(),
        ],
      ),
    );
  }

  static _registerRepositories() async {
    GetIt.instance.registerLazySingleton<UserRepository>(
      () => UserRepository(
        apiClient: apiClient,
        connectionManager: connectionManager,
      ),
    );
  }
}
