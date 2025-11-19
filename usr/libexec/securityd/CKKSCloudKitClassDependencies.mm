@interface CKKSCloudKitClassDependencies
+ (id)forLiveCloudKit;
- (CKKSCloudKitClassDependencies)initWithFetchRecordZoneChangesOperationClass:(Class)a3 fetchRecordsOperationClass:(Class)a4 queryOperationClass:(Class)a5 modifySubscriptionsOperationClass:(Class)a6 modifyRecordZonesOperationClass:(Class)a7 apsConnectionClass:(Class)a8 nsnotificationCenterClass:(Class)a9 nsdistributednotificationCenterClass:(Class)a10 notifierClass:(Class)a11;
@end

@implementation CKKSCloudKitClassDependencies

- (CKKSCloudKitClassDependencies)initWithFetchRecordZoneChangesOperationClass:(Class)a3 fetchRecordsOperationClass:(Class)a4 queryOperationClass:(Class)a5 modifySubscriptionsOperationClass:(Class)a6 modifyRecordZonesOperationClass:(Class)a7 apsConnectionClass:(Class)a8 nsnotificationCenterClass:(Class)a9 nsdistributednotificationCenterClass:(Class)a10 notifierClass:(Class)a11
{
  v20.receiver = self;
  v20.super_class = CKKSCloudKitClassDependencies;
  v17 = [(CKKSCloudKitClassDependencies *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fetchRecordZoneChangesOperationClass, a3);
    objc_storeStrong(&v18->_fetchRecordsOperationClass, a4);
    objc_storeStrong(&v18->_queryOperationClass, a5);
    objc_storeStrong(&v18->_modifySubscriptionsOperationClass, a6);
    objc_storeStrong(&v18->_modifyRecordZonesOperationClass, a7);
    objc_storeStrong(&v18->_apsConnectionClass, a8);
    objc_storeStrong(&v18->_nsnotificationCenterClass, a9);
    objc_storeStrong(&v18->_nsdistributednotificationCenterClass, a10);
    objc_storeStrong(&v18->_notifierClass, a11);
  }

  return v18;
}

+ (id)forLiveCloudKit
{
  v2 = [CKKSCloudKitClassDependencies alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [(CKKSCloudKitClassDependencies *)v2 initWithFetchRecordZoneChangesOperationClass:v3 fetchRecordsOperationClass:v4 queryOperationClass:v5 modifySubscriptionsOperationClass:v6 modifyRecordZonesOperationClass:v7 apsConnectionClass:v8 nsnotificationCenterClass:v9 nsdistributednotificationCenterClass:v10 notifierClass:objc_opt_class()];

  return v11;
}

@end