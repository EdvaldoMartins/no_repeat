// DO NOT EDIT. This is code generated via package:not_repeat/initialize.dart
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'api_endpoints.dart';

class DioBuilder {
  late String _baseUrl;
  final List<Interceptor> _interceptors = [];
  Duration _timeout = Duration.zero;

  void setBaseUrl(String baseUrl) {
    ArgumentError.checkNotNull(baseUrl, 'baseUrl');
    _baseUrl = baseUrl;
  }

  void addInterceptors(Iterable<Interceptor> interceptors) {
    ArgumentError.checkNotNull(interceptors, 'interceptors');
    _interceptors.addAll(interceptors);
  }

  void setTimeout(Duration timeout) {
    ArgumentError.checkNotNull(timeout, 'timeout');
    _timeout = timeout;
  }

  Dio build() {
    final dio = Dio();

    dio.options.baseUrl = _baseUrl;
    dio.options.connectTimeout = _timeout.inMilliseconds;
    dio.options.sendTimeout = _timeout.inMilliseconds;
    dio.options.receiveTimeout = _timeout.inMilliseconds;
    dio.interceptors.addAll(_interceptors);

    final defaultClient = DefaultHttpClientAdapter();
    defaultClient.onHttpClientCreate = (httpClient) {
      httpClient.badCertificateCallback =
          (_, host, __) => host == ApiEndpoints.apiBaseUrl;
    };

    dio.httpClientAdapter = defaultClient;
    return dio;
  }
}
