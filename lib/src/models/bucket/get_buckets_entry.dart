
import '../owner_entry.dart';
import 'bucket_entry.dart';

///获取所有Bucket
class GetBucketsRequest{
  //限定返回的bucket name必须以prefix作为前缀，可以不设定。不设定时则不过滤前缀信息
  String prefix = "";
  //设定结果从marker之后按字母排序的第一个开始返回，可以不设定。不设定时则从头开始返回数据
  String marker = "";
  //限定此次返回bucket的最大数，可以不设定。如果不设定，默认为100，max-keys取值不能大于1000
  int maxKeys = 100;
  GetBucketsRequest({this.prefix, this.marker, this.maxKeys});
}

class GetBucketsResponse{
  //buckets集合
  List<BucketEntry> buckets;
  //Bucket拥有者信息
  OwnerEntry owner;
  GetBucketsResponse({this.buckets, this.owner});
}