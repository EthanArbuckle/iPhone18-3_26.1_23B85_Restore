@interface HMFObjectCacheHAPCharacteristicMetadata
+ (id)hap_cacheInstanceForMetadata:(id)a3;
@end

@implementation HMFObjectCacheHAPCharacteristicMetadata

+ (id)hap_cacheInstanceForMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = objc_opt_class();
      v13 = v12;
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = objc_opt_class();
      v14 = v25;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v18, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([v3 conformsToProtocol:&OBJC_PROTOCOL___NSCopying] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = objc_opt_class();
      v16 = v23;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v18, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = v3;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = qword_1002ACC10;
  if (!qword_1002ACC10)
  {
    v6 = [[NSHashTable alloc] initWithOptions:6 capacity:0];
    v7 = qword_1002ACC10;
    qword_1002ACC10 = v6;

    v5 = qword_1002ACC10;
  }

  v8 = [v5 member:v3];
  if (!v8)
  {
    v8 = [v3 copy];
    [qword_1002ACC10 addObject:v8];
  }

  os_unfair_lock_unlock(&unk_1002ACC18);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  return v8;
}

@end