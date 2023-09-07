import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../barrel.dart';

class Environment {
  Environment._(this._environmentType);

  static Environment? _instance;
  final EnvironmentType _environmentType;

  static get isLocal => _instance!._environmentType == EnvironmentType.LOCAL;

  static get isDevelopment =>
      _instance!._environmentType == EnvironmentType.DEVELOPMENT;

  static get isProduction =>
      _instance!._environmentType == EnvironmentType.PRODUCTION;

  static newInstance(EnvironmentType environmentType) {
    _instance ??= Environment._(environmentType);
    return _instance!;
  }

  static get baseUrl {
    switch (_instance!._environmentType) {
      case EnvironmentType.LOCAL:
        return 'http://192.168.35.104:9000';
      case EnvironmentType.DEVELOPMENT:
        return 'https://dev.example.com';
      case EnvironmentType.PRODUCTION:
        return 'https://example.com';
      default:
        return 'http://localhost:8080';
    }
  }

  run() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Injector.registerDependencies();
    await EasyLocalization.ensureInitialized();
    runApp(
      EasyLocalization(
        startLocale: LocaleManager.koLocale,
        supportedLocales: const [
          LocaleManager.koLocale,
          LocaleManager.enLocale,
        ],
        path: 'assets/translations',
        fallbackLocale: LocaleManager.koLocale,
        child: const ProjectName(),
      ),
    );
  }
}
