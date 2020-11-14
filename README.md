#  阿里云Oss插件
## 代码示例
```
class OssTest {
  //全局初始化
  static void init() {
    ClientConfig config = ClientConfig(
        endPoint: 'https://xxx.aliyuncs.com',
        bucket: 'yourBucket',
        authorizationProvider: TestAuthorizationProvider()
        );
    OssClient.init(config);
  }

  //上传
  static void upload() {
    PutObjectRequest request =
        PutObjectRequest('test.jpg', '/storage/emulated/0/test.jpg');
    OssClient.instance.putObject(request,
        onSucceed: (PutObjectResponse result) {
        print("upload success:${result.url}");
        }, onFailed: (String msg) {
      print("上传失败:$msg");
    }, onProgress: (int count, int total) {
      double progress = count * 100 / total;
      print("count=$count ---total=$total---progress=$progress");
    });
  }

  //下载
  static void download(){
    GetObjectRequest request =
   GetObjectRequest('test.jpg', '/storage/emulated/0/test1112.jpg',isAuthorizationRequired: false);
   OssClient.instance.getObject(request, onSucceed: () {
     print("下载成功");
   }, onFailed: (String msg) {
     print("下载失败");
   }, onProgress: (int count, int total) {
     double progress = count * 100 / total;
     print("count=$count ---total=$total---progress=$progress");
   });
  }


}

class TestAuthorizationProvider implements AuthorizationProvider {
  @override
  Future<OssToken> getAuthorization() async {
    String tempAk;
    String tempSk;
    String securityToken;
    String expiration;
    await NetUtils.instance.get(NetUrl.OSS_TOKEN, onSuccess: (data) {
       tempAk = data['AccessKeyId'];
       tempSk = data['AccessKeySecret'];
       securityToken = data['SecurityToken'];
       expiration = data['Expiration'];
     });
    return OssToken(
        tempAk: tempAk,
        tempSk: tempSk,
        securityToken: securityToken,
        expiration: expiration);
  }
}
```