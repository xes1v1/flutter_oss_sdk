///Bucket访问权限
enum CannedAccessControlList {
  ACL_PRIVATE,
  ACL_PUBLIC_READ,
  ACL_PUBLIC_READ_WRITE
}

///Bucket存储类型
enum StorageClass{
  //标准存储
  STANDARD,
  //低频访问
  IA,
  //归档存储
  ARCHIVE
}

///Bucket的数据容灾类型
enum DataRedundancyType{
  //本地容灾类型
  LRS,
  //同城容灾类型
  ZRS,
}


enum HttpMethod{
  GET,
  POST,
  PUT,
  DELETE
}

class HttpHeaderKey{
  static const String X_OSS_SECURITY_TOKEN = 'x-oss-security-token';
  static const String CONTENT_TYPE = 'Content-Type';
  static const String CONTENT_MD5 = 'Content-MD5';
  static const String AUTHORIZATION = 'Authorization';
}