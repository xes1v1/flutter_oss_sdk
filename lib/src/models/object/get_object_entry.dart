///下载object
class GetObjectRequest {
  String bucketName;
  String objectKey;
  String path;
  bool isAuthorizationRequired;
  GetObjectRequest(this.objectKey, this.path,{this.bucketName,this.isAuthorizationRequired});
}