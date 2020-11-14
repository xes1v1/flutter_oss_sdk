
import 'package:flutter_oss_sdk/src/models/bucket/create_bucket_entry.dart';
import 'package:flutter_oss_sdk/src/models/bucket/get_buckets_entry.dart';

import 'base_service.dart';

///bucket service 暂未实现
abstract class BucketService implements BaseService {
  Future createBucket<T>(
      CreateBucketRequest request, Function(T result) callback) {
    throw UnimplementedError();
  }

  Future getAllBuckets<T>(
      GetBucketsRequest request, Function(T result) callback) {
    throw UnimplementedError();
  }
}