@interface MACloudSyncOperation
- (MACloudSyncOperation)initWithIdentifier:(id)identifier type:(unint64_t)type completionHandle:(id)handle;
@end

@implementation MACloudSyncOperation

- (MACloudSyncOperation)initWithIdentifier:(id)identifier type:(unint64_t)type completionHandle:(id)handle
{
  identifierCopy = identifier;
  handleCopy = handle;
  v18.receiver = self;
  v18.super_class = MACloudSyncOperation;
  v11 = [(MACloudSyncOperation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_type = type;
    v13 = +[NSDate now];
    startTime = v12->_startTime;
    v12->_startTime = v13;

    *&v12->_assetZoneDone = 0;
    v15 = objc_retainBlock(handleCopy);
    completionHandle = v12->_completionHandle;
    v12->_completionHandle = v15;
  }

  return v12;
}

@end