@interface CKKSCloudKitDeletion
- (CKKSCloudKitDeletion)initWithRecordID:(id)d recordType:(id)type;
@end

@implementation CKKSCloudKitDeletion

- (CKKSCloudKitDeletion)initWithRecordID:(id)d recordType:(id)type
{
  dCopy = d;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = CKKSCloudKitDeletion;
  v9 = [(CKKSCloudKitDeletion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordID, d);
    objc_storeStrong(&v10->_recordType, type);
  }

  return v10;
}

@end