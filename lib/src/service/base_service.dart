

import 'package:flutter_oss_sdk/src/models/request_message.dart';

import '../network/oss_call.dart';

abstract class BaseService {
  Future<OssCall> newCall(RequestMessage requestMessage);
}