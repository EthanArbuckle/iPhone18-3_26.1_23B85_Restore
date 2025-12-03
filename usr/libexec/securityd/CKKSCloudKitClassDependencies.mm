@interface CKKSCloudKitClassDependencies
+ (id)forLiveCloudKit;
- (CKKSCloudKitClassDependencies)initWithFetchRecordZoneChangesOperationClass:(Class)class fetchRecordsOperationClass:(Class)operationClass queryOperationClass:(Class)queryOperationClass modifySubscriptionsOperationClass:(Class)subscriptionsOperationClass modifyRecordZonesOperationClass:(Class)zonesOperationClass apsConnectionClass:(Class)connectionClass nsnotificationCenterClass:(Class)centerClass nsdistributednotificationCenterClass:(Class)self0 notifierClass:(Class)self1;
@end

@implementation CKKSCloudKitClassDependencies

- (CKKSCloudKitClassDependencies)initWithFetchRecordZoneChangesOperationClass:(Class)class fetchRecordsOperationClass:(Class)operationClass queryOperationClass:(Class)queryOperationClass modifySubscriptionsOperationClass:(Class)subscriptionsOperationClass modifyRecordZonesOperationClass:(Class)zonesOperationClass apsConnectionClass:(Class)connectionClass nsnotificationCenterClass:(Class)centerClass nsdistributednotificationCenterClass:(Class)self0 notifierClass:(Class)self1
{
  v20.receiver = self;
  v20.super_class = CKKSCloudKitClassDependencies;
  v17 = [(CKKSCloudKitClassDependencies *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fetchRecordZoneChangesOperationClass, class);
    objc_storeStrong(&v18->_fetchRecordsOperationClass, operationClass);
    objc_storeStrong(&v18->_queryOperationClass, queryOperationClass);
    objc_storeStrong(&v18->_modifySubscriptionsOperationClass, subscriptionsOperationClass);
    objc_storeStrong(&v18->_modifyRecordZonesOperationClass, zonesOperationClass);
    objc_storeStrong(&v18->_apsConnectionClass, connectionClass);
    objc_storeStrong(&v18->_nsnotificationCenterClass, centerClass);
    objc_storeStrong(&v18->_nsdistributednotificationCenterClass, nsdistributednotificationCenterClass);
    objc_storeStrong(&v18->_notifierClass, notifierClass);
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