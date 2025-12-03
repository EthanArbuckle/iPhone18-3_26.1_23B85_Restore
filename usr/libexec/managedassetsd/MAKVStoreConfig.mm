@interface MAKVStoreConfig
- (MAKVStoreConfig)initWithName:(id)name group:(id)group assetType:(unint64_t)type syncToCloud:(BOOL)cloud hasStaging:(BOOL)staging hasAutoUpdateTime:(BOOL)time autoInsertUpdatedDate:(BOOL)date isCoreRXDataSharingStore:(BOOL)self0 recordHandleField:(id)self1;
@end

@implementation MAKVStoreConfig

- (MAKVStoreConfig)initWithName:(id)name group:(id)group assetType:(unint64_t)type syncToCloud:(BOOL)cloud hasStaging:(BOOL)staging hasAutoUpdateTime:(BOOL)time autoInsertUpdatedDate:(BOOL)date isCoreRXDataSharingStore:(BOOL)self0 recordHandleField:(id)self1
{
  nameCopy = name;
  groupCopy = group;
  fieldCopy = field;
  v24.receiver = self;
  v24.super_class = MAKVStoreConfig;
  v20 = [(MAKVStoreConfig *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, name);
    objc_storeStrong(&v21->_group, group);
    v21->_assetType = type;
    v21->_syncToCloud = cloud;
    v21->_hasStaging = staging;
    v21->_autoUpdateTimeStamp = time;
    v21->_autoInsertUpdatedDate = date;
    v21->_isCoreRXDataSharingStore = store;
    objc_storeStrong(&v21->_recordHandleField, field);
  }

  return v21;
}

@end