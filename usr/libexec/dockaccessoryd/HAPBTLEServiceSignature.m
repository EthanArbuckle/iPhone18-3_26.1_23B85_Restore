@interface HAPBTLEServiceSignature
- (HAPBTLEServiceSignature)initWithServiceType:(id)a3 serviceInstanceID:(id)a4 serviceProperties:(unint64_t)a5 linkedServices:(id)a6 authenticated:(BOOL)a7;
- (id)description;
@end

@implementation HAPBTLEServiceSignature

- (HAPBTLEServiceSignature)initWithServiceType:(id)a3 serviceInstanceID:(id)a4 serviceProperties:(unint64_t)a5 linkedServices:(id)a6 authenticated:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!v12)
  {
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(0);
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = objc_opt_class();
      v25 = v32;
      v26 = "%{public}@[%@] The service type is requied";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);
    }

LABEL_11:

    v22 = 0;
    goto LABEL_12;
  }

  if (!v13)
  {
    v23 = sub_10007FAA0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = sub_10007FAFC(0);
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = objc_opt_class();
      v25 = v32;
      v26 = "%{public}@[%@] The service instance ID is requied";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v28.receiver = self;
  v28.super_class = HAPBTLEServiceSignature;
  v15 = [(HAPBTLEServiceSignature *)&v28 init];
  if (v15)
  {
    v16 = [v12 copy];
    serviceType = v15->_serviceType;
    v15->_serviceType = v16;

    v18 = [v13 copy];
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v18;

    v15->_serviceProperties = a5;
    v20 = [v14 copy];
    linkedServices = v15->_linkedServices;
    v15->_linkedServices = v20;

    v15->_authenticated = a7;
  }

  self = v15;
  v22 = self;
LABEL_12:

  return v22;
}

- (id)description
{
  v3 = [(HAPBTLEServiceSignature *)self serviceType];
  v4 = [(HAPBTLEServiceSignature *)self serviceInstanceID];
  v5 = [(HAPBTLEServiceSignature *)self serviceProperties];
  v6 = [(HAPBTLEServiceSignature *)self linkedServices];
  v7 = [NSString stringWithFormat:@"Service Signature: Type : %@, InstanceID : %@, Properties : %tu, Linked Services : %@", v3, v4, v5, v6];

  return v7;
}

@end