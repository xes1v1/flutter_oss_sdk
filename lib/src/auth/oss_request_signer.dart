import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_oss_sdk/src/models/oss_const.dart';
import 'package:flutter_oss_sdk/src/network/OssRequest.dart';

import 'oss_token.dart';
///oss 签名改类
class OssRequestSigner {
  static const String NEW_LINE = '\n';
  OssToken _token;
  OssRequest _request;

  OssRequestSigner(this._token, this._request);

  String sign(){
    String accessKeyId = _token.tempAk;
    String canonicalString = _buildCanonicalString();
    String signature = _hmacSha1(canonicalString);
    return "OSS $accessKeyId:$signature";
  }

  String _hmacSha1(String content){
    var key = utf8.encode(_token.tempSk);
    var bytes = utf8.encode(content);
    Hmac hmac = Hmac(sha1,key);
    Digest digest = hmac.convert(bytes);
    String result = base64Encode(digest.bytes);
    return result;
  }

  String _buildCanonicalString(){
      StringBuffer canonicalString = StringBuffer();
      canonicalString.write(_request.method);
      canonicalString.write(NEW_LINE);
      canonicalString.write('');
      canonicalString.write(NEW_LINE);
      canonicalString.write(_request.headers[HttpHeaderKey.CONTENT_TYPE]);
      canonicalString.write(NEW_LINE);
      canonicalString.write(_getGMTDate());
      canonicalString.write(NEW_LINE);
      canonicalString.write("${HttpHeaderKey.X_OSS_SECURITY_TOKEN}:");
      canonicalString.write(_request.headers[HttpHeaderKey.X_OSS_SECURITY_TOKEN]);
      canonicalString.write(NEW_LINE);
      canonicalString.write("/${_request.bucket}/${_request.objectKey}");
      return canonicalString.toString();
  }

  String _getGMTDate(){
    DateTime now = DateTime.now();
    int gmtMilliseconds = now.millisecondsSinceEpoch - now.timeZoneOffset.inMilliseconds;
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(gmtMilliseconds);
    String weekDay = _formatWeekDay(dateTime.weekday);
    String month = _formatMonth(dateTime.month);
    String result = "$weekDay, ${_dealIntWithZero(dateTime.day)} $month ${dateTime.year} ${_dealIntWithZero(dateTime.hour)}:${_dealIntWithZero(dateTime.minute)}:${_dealIntWithZero(dateTime.second)} GMT";
    print("_getGMTDate=$result");
    _request.headers['Date']=result;
    return result;
  }

  String _dealIntWithZero(int value){
    return value<10?"0$value":"$value";
  }
  
  String _formatMonth(int value){
    switch(value){
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
    }
    return "";
  }

  String _formatWeekDay(int value){
    switch(value){
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
    }
    return "";
  }
}
