@interface MACloudSyncOperation
- (MACloudSyncOperation)initWithIdentifier:(id)a3 type:(unint64_t)a4 completionHandle:(id)a5;
@end

@implementation MACloudSyncOperation

- (MACloudSyncOperation)initWithIdentifier:(id)a3 type:(unint64_t)a4 completionHandle:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MACloudSyncOperation;
  v11 = [(MACloudSyncOperation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    v12->_type = a4;
    v13 = +[NSDate now];
    startTime = v12->_startTime;
    v12->_startTime = v13;

    *&v12->_assetZoneDone = 0;
    v15 = objc_retainBlock(v10);
    completionHandle = v12->_completionHandle;
    v12->_completionHandle = v15;
  }

  return v12;
}

@end