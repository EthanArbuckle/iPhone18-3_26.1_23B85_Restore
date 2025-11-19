@interface MAKVStoreConfig
- (MAKVStoreConfig)initWithName:(id)a3 group:(id)a4 assetType:(unint64_t)a5 syncToCloud:(BOOL)a6 hasStaging:(BOOL)a7 hasAutoUpdateTime:(BOOL)a8 autoInsertUpdatedDate:(BOOL)a9 isCoreRXDataSharingStore:(BOOL)a10 recordHandleField:(id)a11;
@end

@implementation MAKVStoreConfig

- (MAKVStoreConfig)initWithName:(id)a3 group:(id)a4 assetType:(unint64_t)a5 syncToCloud:(BOOL)a6 hasStaging:(BOOL)a7 hasAutoUpdateTime:(BOOL)a8 autoInsertUpdatedDate:(BOOL)a9 isCoreRXDataSharingStore:(BOOL)a10 recordHandleField:(id)a11
{
  v18 = a3;
  v19 = a4;
  v23 = a11;
  v24.receiver = self;
  v24.super_class = MAKVStoreConfig;
  v20 = [(MAKVStoreConfig *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, a3);
    objc_storeStrong(&v21->_group, a4);
    v21->_assetType = a5;
    v21->_syncToCloud = a6;
    v21->_hasStaging = a7;
    v21->_autoUpdateTimeStamp = a8;
    v21->_autoInsertUpdatedDate = a9;
    v21->_isCoreRXDataSharingStore = a10;
    objc_storeStrong(&v21->_recordHandleField, a11);
  }

  return v21;
}

@end