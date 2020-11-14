
///上传Object
class PutObjectRequest{
  String bucketName;
  String objectKey;
  String uploadFilePath;
  bool isAuthorizationRequired;
  PutObjectRequest(this.objectKey, this.uploadFilePath,{this.bucketName,this.isAuthorizationRequired});
}


class PutObjectResponse{
  String url;

  PutObjectResponse(this.url);

  PutObjectResponse.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }

}