
class OssUtils{

  ///根据Bucket（存储空间）、 oss 域名节点（Endpoint）生成url
  static String buildUrlWithBucket(String bucket,String endPoint,{String resourcePath}){
      Uri uri = Uri.parse(endPoint);
      String scheme = uri.scheme;
      String host = uri.host;
      if(bucket.isNotEmpty){
         host = "$bucket.$host";
      }
      if(resourcePath == null || resourcePath.isEmpty){
        return "$scheme://$host";
      }else{
        return "$scheme://$host/$resourcePath";
      }
  }
}