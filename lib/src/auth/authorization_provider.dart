import 'oss_token.dart';

///获取Authorization抽象类
abstract class AuthorizationProvider {
  Future<OssToken> getAuthorization();
}
