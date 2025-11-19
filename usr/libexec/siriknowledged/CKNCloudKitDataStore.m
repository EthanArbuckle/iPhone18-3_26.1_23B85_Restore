@interface CKNCloudKitDataStore
- (void)mergeRecordsWithDictionary:(id)a3 deletedRecordKeys:(id)a4 containsAllChanges:(BOOL)a5;
@end

@implementation CKNCloudKitDataStore

- (void)mergeRecordsWithDictionary:(id)a3 deletedRecordKeys:(id)a4 containsAllChanges:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (v5)
  {
    v10 = +[CKDaemon sharedDaemon];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002214;
    v13[3] = &unk_1000185E8;
    v14 = v7;
    v15 = v8;
    [v10 keysInStoreWithIdentifier:@"synched" completionHandler:v13];

    v11 = v14;
LABEL_9:

    goto LABEL_10;
  }

  if ([v7 count])
  {
    v12 = +[CKDaemon sharedDaemon];
    [v12 saveKeysAndValues:v7 toStoreWithIdentifier:@"synched" completionHandler:&stru_100018608];
  }

  if ([v8 count])
  {
    v11 = +[CKDaemon sharedDaemon];
    [v11 removeValuesForKeys:v8 fromStoreWithIdentifier:@"synched" completionHandler:&stru_100018628];
    goto LABEL_9;
  }

LABEL_10:
}

@end