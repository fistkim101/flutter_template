import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_it/get_it.dart';

class Injector {
  Injector._();

  static DeviceInfoPlugin get deviceInfoPlugin =>
      GetIt.instance.get<DeviceInfoPlugin>();

  static Future registerDependencies() async {
    _registerUtils();
    _registerNetworks();
    _registerRepositories();
  }

  static _registerUtils() async {
    GetIt.instance
        .registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());
  }

  static _registerNetworks() async {}

  static _registerRepositories() async {}
}
