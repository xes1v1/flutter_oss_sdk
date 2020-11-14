import 'dart:io';

///Oss请求封装类
class OssRequest {
  String method;
  dynamic data;
  String url;
  Map<String, dynamic> headers={};
  String bucket;
  String objectKey;
  ContentType contentType;
  OssRequest({this.method, this.data, this.url, this.headers,this.bucket,this.objectKey,this.contentType});

}