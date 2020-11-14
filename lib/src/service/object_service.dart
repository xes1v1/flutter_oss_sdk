

import 'package:flutter_oss_sdk/src/models/object/get_object_entry.dart';
import 'package:flutter_oss_sdk/src/models/object/put_object_entry.dart';
import 'package:flutter_oss_sdk/src/models/oss_const.dart';
import 'package:flutter_oss_sdk/src/models/request_message.dart';
import 'package:flutter_oss_sdk/src/network/content_type_utils.dart';
import 'package:flutter_oss_sdk/src/network/oss_call.dart';
import 'package:flutter_oss_sdk/src/network/oss_response.dart';

import 'base_service.dart';
abstract class ObjectService implements BaseService {
  Future putObject(PutObjectRequest request,{Function(PutObjectResponse result) onSucceed,
    Function(String errMsg) onFailed,
    Function(int count, int total) onProgress}) async {
    RequestMessage requestMsg = RequestMessage();
    requestMsg.bucketName = request.bucketName;
    requestMsg.objectKey = request.objectKey;
    requestMsg.uploadPath = request.uploadFilePath;
    requestMsg.method = HttpMethod.PUT;
    requestMsg.contentType =ContentTypeUtils.getFileContentType(requestMsg.uploadPath);
    requestMsg.isAuthorizationRequired = request.isAuthorizationRequired;
    OssCall call = await newCall(requestMsg);
    call.execute(callback:(OssResponse result){
      if(result.code == 200){
        PutObjectResponse response = PutObjectResponse(result.url);
        onSucceed(response);
      }else{
        onFailed("upload failed,error code : ${result.code}");
      }
    },onProgress: onProgress);
  }


  Future getObject(GetObjectRequest request,{Function() onSucceed,
    Function(String errMsg) onFailed,
    Function(int count, int total) onProgress}) async {
    RequestMessage requestMsg = RequestMessage();
    requestMsg.bucketName = request.bucketName;
    requestMsg.objectKey = request.objectKey;
    requestMsg.savePath = request.path;
    requestMsg.method = HttpMethod.GET;
    requestMsg.isAuthorizationRequired = request.isAuthorizationRequired;
    // requestMsg.contentType = ContentTypeUtils.getFileContentType(requestMsg.savePath);
    OssCall call = await newCall(requestMsg);
    call.execute(callback:(OssResponse result){
      if(result.code == 200){
        onSucceed();
      }else{
        onFailed("download failed,error code : ${result.code}");
      }
    },onReceiverProgress: onProgress,path: requestMsg.savePath);
  }
}
