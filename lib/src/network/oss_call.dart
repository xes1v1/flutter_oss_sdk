import 'package:dio/dio.dart';

import 'OssRequest.dart';
import 'oss_response.dart';

class OssCall {
  OssRequest request;
  Dio dio;

  OssCall(this.request, this.dio);

  Future execute(
      {Function(OssResponse result) callback,
      Function(int count, int total) onProgress,
      Function(int count, int total) onReceiverProgress,
      String path}) async {
    Options options = Options();
    options.contentType = request.contentType.toString();
    options.method = request.method;
    if (request.headers != null) {
      options.headers = request.headers;
      options.headers.forEach((String key,dynamic value){
        print("$key=$value");
      });
    }
    Response response;
    OssResponse result = OssResponse();
    try {
      if (path == null || path.isEmpty) {
        response = await dio.request(request.url,
            data: request.data,
            options: options,
            onSendProgress: onProgress,
            onReceiveProgress: onReceiverProgress);
      } else {
        response = await dio.download(request.url, path,
            data: request.data,
            options: options,
            onReceiveProgress: onReceiverProgress);
      }
      result.code = response.statusCode;
    } on DioError catch (e) {
      print("request error:${e.toString()}");
      result.code = 500;
      result.msg = e.response.toString();
    }
    result.url = request.url;
    if (callback != null) {
      callback(result);
    }
  }
}
