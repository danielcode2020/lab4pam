import 'package:get/get.dart';

class ApiService extends GetxService {
  late GetConnect _getConnect;

  ApiService() {
    _getConnect = GetConnect(timeout: const Duration(seconds: 30));
    _getConnect.httpClient.baseUrl = "https://news-app-api.k8s.devebs.net/";
  }

  Future<Response> get(String path) async {
    return await _getConnect.get(path);
  }
}