import '../oss_const.dart';

///创建Bucket
class CreateBucketRequest{
  //Bucket存储类型
  String storageClass;
  //Bucket的数据容灾类型
  DataRedundancyType dataRedundancyType;
  //bucket名称
  String bucketName;
  //Bucket访问权限
  CannedAccessControlList bucketACL;

  CreateBucketRequest({this.storageClass, this.dataRedundancyType,
      this.bucketName, this.bucketACL});

}

class CreateBucketResponse{

}
