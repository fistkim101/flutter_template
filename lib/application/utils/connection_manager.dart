import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionManager {
  final Connectivity connectivity;

  ConnectionManager({
    required this.connectivity,
  });

  Future<bool> get isConnected async {
    final ConnectivityResult connectivityResult =
    await connectivity.checkConnectivity();
    return ((connectivityResult == ConnectivityResult.wifi) ||
        (connectivityResult == ConnectivityResult.mobile));
  }
}
