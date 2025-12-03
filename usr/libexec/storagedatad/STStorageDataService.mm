@interface STStorageDataService
- (void)storageInfoDict:(id)dict;
@end

@implementation STStorageDataService

- (void)storageInfoDict:(id)dict
{
  dictCopy = dict;
  v4 = sub_100000D18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling request for StorageData info", v7, 2u);
  }

  v5 = objc_alloc_init(STStorageDataInterface);
  storageInfoDict = [v5 storageInfoDict];
  if (dictCopy)
  {
    dictCopy[2](dictCopy, storageInfoDict);
  }
}

@end