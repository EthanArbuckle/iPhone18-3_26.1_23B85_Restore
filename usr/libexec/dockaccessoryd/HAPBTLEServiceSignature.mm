@interface HAPBTLEServiceSignature
- (HAPBTLEServiceSignature)initWithServiceType:(id)type serviceInstanceID:(id)d serviceProperties:(unint64_t)properties linkedServices:(id)services authenticated:(BOOL)authenticated;
- (id)description;
@end

@implementation HAPBTLEServiceSignature

- (HAPBTLEServiceSignature)initWithServiceType:(id)type serviceInstanceID:(id)d serviceProperties:(unint64_t)properties linkedServices:(id)services authenticated:(BOOL)authenticated
{
  typeCopy = type;
  dCopy = d;
  servicesCopy = services;
  if (!typeCopy)
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

    selfCopy = 0;
    goto LABEL_12;
  }

  if (!dCopy)
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
    v16 = [typeCopy copy];
    serviceType = v15->_serviceType;
    v15->_serviceType = v16;

    v18 = [dCopy copy];
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v18;

    v15->_serviceProperties = properties;
    v20 = [servicesCopy copy];
    linkedServices = v15->_linkedServices;
    v15->_linkedServices = v20;

    v15->_authenticated = authenticated;
  }

  self = v15;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (id)description
{
  serviceType = [(HAPBTLEServiceSignature *)self serviceType];
  serviceInstanceID = [(HAPBTLEServiceSignature *)self serviceInstanceID];
  serviceProperties = [(HAPBTLEServiceSignature *)self serviceProperties];
  linkedServices = [(HAPBTLEServiceSignature *)self linkedServices];
  v7 = [NSString stringWithFormat:@"Service Signature: Type : %@, InstanceID : %@, Properties : %tu, Linked Services : %@", serviceType, serviceInstanceID, serviceProperties, linkedServices];

  return v7;
}

@end