import 'base_http_client.dart';

class ApiClient extends BaseHttpClient {
  ApiClient({
    required super.clientBaseUrl,
    required super.customInterceptors,
    super.customOptions,
  });
}
