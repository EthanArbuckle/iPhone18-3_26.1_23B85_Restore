@interface CKNCloudKitDataStore
- (void)mergeRecordsWithDictionary:(id)dictionary deletedRecordKeys:(id)keys containsAllChanges:(BOOL)changes;
@end

@implementation CKNCloudKitDataStore

- (void)mergeRecordsWithDictionary:(id)dictionary deletedRecordKeys:(id)keys containsAllChanges:(BOOL)changes
{
  changesCopy = changes;
  dictionaryCopy = dictionary;
  keysCopy = keys;
  v9 = CKLogContextDaemon;
  if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[CKNCloudKitDataStore mergeRecordsWithDictionary:deletedRecordKeys:containsAllChanges:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (changesCopy)
  {
    v10 = +[CKDaemon sharedDaemon];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100002214;
    v13[3] = &unk_1000185E8;
    v14 = dictionaryCopy;
    v15 = keysCopy;
    [v10 keysInStoreWithIdentifier:@"synched" completionHandler:v13];

    v11 = v14;
LABEL_9:

    goto LABEL_10;
  }

  if ([dictionaryCopy count])
  {
    v12 = +[CKDaemon sharedDaemon];
    [v12 saveKeysAndValues:dictionaryCopy toStoreWithIdentifier:@"synched" completionHandler:&stru_100018608];
  }

  if ([keysCopy count])
  {
    v11 = +[CKDaemon sharedDaemon];
    [v11 removeValuesForKeys:keysCopy fromStoreWithIdentifier:@"synched" completionHandler:&stru_100018628];
    goto LABEL_9;
  }

LABEL_10:
}

@end