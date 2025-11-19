@interface CKKSCloudKitDeletion
- (CKKSCloudKitDeletion)initWithRecordID:(id)a3 recordType:(id)a4;
@end

@implementation CKKSCloudKitDeletion

- (CKKSCloudKitDeletion)initWithRecordID:(id)a3 recordType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKKSCloudKitDeletion;
  v9 = [(CKKSCloudKitDeletion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordID, a3);
    objc_storeStrong(&v10->_recordType, a4);
  }

  return v10;
}

@end