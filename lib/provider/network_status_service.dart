import 'dart:async';

import 'package:data_connection_checker/data_connection_checker.dart';

enum NetworkStatus { Online, Offline }

class NetworkStatusService {
  StreamController<NetworkStatus> networkStatusController =
  StreamController<NetworkStatus>();

  NetworkStatusService() {
    DataConnectionChecker().onStatusChange.listen((status){
      networkStatusController.add(_getNetworkStatus(status));
    });
  }

  NetworkStatus _getNetworkStatus(DataConnectionStatus status) {
    return status == DataConnectionStatus.connected ? NetworkStatus.Online : NetworkStatus.Offline;
  }
}