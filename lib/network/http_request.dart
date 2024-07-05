import 'package:dio/dio.dart';
import 'package:flutter_demo/network/http_config.dart';

class HttpRequest {
  static Future requestData(String url, {String method = "GET", Map<String, dynamic>? params}) async {
    BaseOptions baseOptions = BaseOptions(
      baseUrl:BaseURL,
      connectTimeout: const Duration(seconds: ConnectTimeout),
      receiveTimeout: const Duration(seconds: ReceiveTimeount),
      responseType: ResponseType.json,
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        "device-type": "iOS",
        "dark-mode": "0",
        "versionNo": "5.4.4.0",
        "area": "1",
        "device-info": "ios",
        "Accept-Language": "zh-CN",
      }
    );

    final _dio = Dio(baseOptions);

    Options options = Options(method: method);
    try {
      final result = await _dio.request(url, queryParameters: params, options: options);
      if (result.statusCode == 200) {
        return result.data;
      } else {
        print("请求失败：${result.statusCode}");
        return null;
      }
    } on DioError catch(err) {
      throw err;
    }
  }
}