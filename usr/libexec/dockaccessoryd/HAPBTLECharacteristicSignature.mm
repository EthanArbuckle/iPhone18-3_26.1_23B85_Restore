@interface HAPBTLECharacteristicSignature
- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)type serviceInstanceID:(id)d serviceType:(id)serviceType characteristicProperties:(unint64_t)properties characteristicMetadata:(id)metadata authenticated:(BOOL)authenticated;
@end

@implementation HAPBTLECharacteristicSignature

- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)type serviceInstanceID:(id)d serviceType:(id)serviceType characteristicProperties:(unint64_t)properties characteristicMetadata:(id)metadata authenticated:(BOOL)authenticated
{
  typeCopy = type;
  dCopy = d;
  serviceTypeCopy = serviceType;
  metadataCopy = metadata;
  v18 = metadataCopy;
  if (!typeCopy)
  {
    v27 = sub_10007FAA0();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v28 = sub_10007FAFC(0);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = objc_opt_class();
    v29 = v36;
    v30 = "%{public}@[%@] The characteristic type is requied";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v30, buf, 0x16u);

    goto LABEL_20;
  }

  if (!dCopy)
  {
    v27 = sub_10007FAA0();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v28 = sub_10007FAFC(0);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = objc_opt_class();
    v29 = v36;
    v30 = "%{public}@[%@] The service instance ID is requied";
    goto LABEL_19;
  }

  if (!serviceTypeCopy)
  {
    v27 = sub_10007FAA0();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v28 = sub_10007FAFC(0);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = objc_opt_class();
    v29 = v36;
    v30 = "%{public}@[%@] The service type is requied";
    goto LABEL_19;
  }

  if (!properties)
  {
    v27 = sub_10007FAA0();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v28 = sub_10007FAFC(0);
    *buf = 138543618;
    v34 = v28;
    v35 = 2112;
    v36 = objc_opt_class();
    v29 = v36;
    v30 = "%{public}@[%@] The characteristic properties is requied";
    goto LABEL_19;
  }

  if (!metadataCopy)
  {
    v27 = sub_10007FAA0();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = sub_10007FAFC(0);
      *buf = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = objc_opt_class();
      v29 = v36;
      v30 = "%{public}@[%@] The characteristic metadata is requied";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v32.receiver = self;
  v32.super_class = HAPBTLECharacteristicSignature;
  v19 = [(HAPBTLECharacteristicSignature *)&v32 init];
  if (v19)
  {
    v20 = [typeCopy copy];
    characteristicType = v19->_characteristicType;
    v19->_characteristicType = v20;

    v22 = [dCopy copy];
    serviceInstanceID = v19->_serviceInstanceID;
    v19->_serviceInstanceID = v22;

    v24 = [serviceTypeCopy copy];
    serviceType = v19->_serviceType;
    v19->_serviceType = v24;

    v19->_characteristicProperties = properties;
    objc_storeStrong(&v19->_characteristicMetadata, metadata);
    v19->_authenticated = authenticated;
  }

  self = v19;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

@end