@interface HAPAccessory
+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)a3;
+ (id)instanceIDForUniqueIdentifier:(id)a3;
+ (id)logCategory;
+ (id)productDataStringFromData:(id)a3;
+ (id)serverIdentifierWithUniqueIdentifier:(id)a3;
- (BOOL)_updateAndValidateServices;
- (BOOL)_updateService:(id)a3;
- (BOOL)_validateCharacteristicValues;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)mergeObject:(id)a3;
- (BOOL)shouldMergeObject:(id)a3;
- (BOOL)updateForAccessoryInformationService;
- (HAPAccessory)init;
- (HAPAccessory)initWithServer:(id)a3 instanceID:(id)a4 parsedServices:(id)a5;
- (HAPAccessoryDelegate)delegate;
- (HAPAccessoryServer)server;
- (NSNumber)category;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)characteristicOfType:(id)a3 serviceType:(id)a4;
- (id)characteristicsOfType:(id)a3;
- (id)servicesOfType:(id)a3;
- (id)shortDescription;
- (int)consecutiveFailedPingCount;
- (unint64_t)hash;
- (void)invalidate;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)readValueForCharacteristic:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)setConsecutiveFailedPingCount:(int)a3;
- (void)writeCharacteristicValue:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6;
@end

@implementation HAPAccessory

+ (id)productDataStringFromData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 hmf_hexadecimalStringWithOptions:2];

  return v6;
}

+ (id)serverIdentifierWithUniqueIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"+"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)instanceIDForUniqueIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"+"];
  if ([v3 count] == 2)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    [v4 setNumberStyle:1];
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [v4 numberFromString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"+"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 isEqualToString:@"1"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HAPAccessory)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPAccessory)initWithServer:(id)a3 instanceID:(id)a4 parsedServices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (sub_10007EA14(v9))
  {
    v20.receiver = self;
    v20.super_class = HAPAccessory;
    v11 = [(HAPAccessory *)&v20 init];
    self = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_server, v8);
      self->_linkType = [v8 linkType];
      self->_communicationProtocol = [v8 communicationProtocol];
      objc_storeStrong(&self->_instanceID, a4);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.HAPAccessory", v12);
      workQueue = self->_workQueue;
      self->_workQueue = v13;

      if (v10)
      {
        if ([v10 count] >= 0x65)
        {
          v15 = sub_10007FAA0();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = sub_10007FAFC(0);
            *buf = 138543362;
            v22 = v16;
            v17 = "%{public}@### Accessory exceeds maximum number of allowed services";
LABEL_9:
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);

            goto LABEL_10;
          }

          goto LABEL_10;
        }

        objc_storeStrong(&self->_services, a5);
        if (![(HAPAccessory *)self _validateCharacteristicValues])
        {
          v15 = sub_10007FAA0();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v16 = sub_10007FAFC(0);
          *buf = 138543362;
          v22 = v16;
          v17 = "%{public}@### Accessory failed validateCharacteristicValues";
          goto LABEL_9;
        }

        if (![(HAPAccessory *)self _updateAndValidateServices])
        {
          v15 = sub_10007FAA0();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v16 = sub_10007FAFC(0);
          *buf = 138543362;
          v22 = v16;
          v17 = "%{public}@### Accessory failed _updateAndValidateServices";
          goto LABEL_9;
        }
      }

      self->_consecutiveFailedPingCount = 0;
      self->_primary = 1;
      self->_reachable = 1;
      self->_shouldDisconnectOnIdle = 0;
    }

    self = self;
    v18 = self;
    goto LABEL_15;
  }

  v15 = sub_10007FAA0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_10007FAFC(0);
    *buf = 138543362;
    v22 = v16;
    v17 = "%{public}@### Unable to initialize accessory because of invalid arguments";
    goto LABEL_9;
  }

LABEL_10:

  v18 = 0;
LABEL_15:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HAPAccessory *)self identifier];
  v4 = [v3 hash];
  v5 = [(HAPAccessory *)self instanceID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = [(HAPAccessory *)self instanceID];
    v8 = [(HAPAccessory *)v6 instanceID];
    v9 = [v7 isEqualToNumber:v8];

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = [(HAPAccessory *)self identifier];
    v11 = [(HAPAccessory *)v6 identifier];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = [(HAPAccessory *)self linkType];
    if (v13 == [(HAPAccessory *)v6 linkType])
    {
      v14 = [(HAPAccessory *)self communicationProtocol];
      v15 = v14 == [(HAPAccessory *)v6 communicationProtocol];
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  return v15;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(HAPAccessory *)self instanceID];
  [v3 appendFormat:@"Instance ID: %@    ", v4];

  v5 = [(HAPAccessory *)self server];
  v6 = [v5 name];
  v7 = [(HAPAccessory *)self server];
  v8 = [v7 identifier];
  [v3 appendFormat:@"Server: '%@' (%@)    ", v6, v8];

  if ([(HAPAccessory *)self isPrimary])
  {
    v9 = [(HAPAccessory *)self category];
    [v3 appendFormat:@"Category: %@    ", v9];
  }

  v10 = [(HAPAccessory *)self name];

  if (v10)
  {
    v11 = [(HAPAccessory *)self name];
    [v3 appendFormat:@"Name: %@    ", v11];
  }

  v12 = [(HAPAccessory *)self model];
  if (v12 || ([(HAPAccessory *)self manufacturer], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v20 = [(HAPAccessory *)self serialNumber];

    if (!v20)
    {
      goto LABEL_15;
    }
  }

  v13 = [(HAPAccessory *)self model];

  if (v13)
  {
    v14 = [(HAPAccessory *)self model];
    [v3 appendFormat:@"Model: %@    ", v14];
  }

  v15 = [(HAPAccessory *)self manufacturer];

  if (v15)
  {
    v16 = [(HAPAccessory *)self manufacturer];
    [v3 appendFormat:@"Manufacturer: %@    ", v16];
  }

  v17 = [(HAPAccessory *)self serialNumber];

  if (v17)
  {
    v18 = [(HAPAccessory *)self serialNumber];
    [v3 appendFormat:@"Serial Number: %@    ", v18];
  }

  [v3 appendFormat:@"\n"];
LABEL_15:

  return v3;
}

- (BOOL)isPaired
{
  v2 = [(HAPAccessory *)self server];
  v3 = [v2 isPaired];

  return v3;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (int)consecutiveFailedPingCount
{
  os_unfair_lock_lock_with_options();
  consecutiveFailedPingCount = self->_consecutiveFailedPingCount;
  os_unfair_lock_unlock(&self->_lock);
  return consecutiveFailedPingCount;
}

- (void)setConsecutiveFailedPingCount:(int)a3
{
  os_unfair_lock_lock_with_options();
  self->_consecutiveFailedPingCount = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  if (!self->_uniqueIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_server);
      v5 = [v4 identifier];
      v6 = [(NSNumber *)self->_instanceID stringValue];
      v7 = [NSString stringWithFormat:@"%@%@%@", v5, @"+", v6];
      uniqueIdentifier = self->_uniqueIdentifier;
      self->_uniqueIdentifier = v7;
    }

    else
    {
      v9 = sub_10007FAA0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sub_10007FAFC(0);
        identifier = self->_identifier;
        *buf = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = identifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot create globally unique identifier because there is no server for accessory: %@", buf, 0x16u);
      }
    }
  }

  v12 = self->_uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (NSNumber)category
{
  v3 = [(HAPAccessory *)self server];
  if (v3 && (v4 = v3, v5 = [(HAPAccessory *)self isPrimary], v4, v5))
  {
    v6 = [(HAPAccessory *)self server];
    v7 = [v6 category];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)shortDescription
{
  if (sub_100014954())
  {
    v3 = [(HAPAccessory *)self name];
    v4 = [(HAPAccessory *)self identifier];
    v5 = [(HAPAccessory *)self instanceID];
    v6 = [NSString stringWithFormat:@"%@/%@+%@", v3, v4, v5];
  }

  else
  {
    v3 = [(HAPAccessory *)self identifier];
    v4 = [(HAPAccessory *)self instanceID];
    v6 = [NSString stringWithFormat:@"%@+%@", v3, v4];
  }

  return v6;
}

- (void)readValueForCharacteristic:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    if (a4 >= 0.0)
    {
      v16 = [(HAPAccessory *)self server];
      if (v16)
      {
        v38 = v10;
        v20 = [NSArray arrayWithObjects:&v38 count:1];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100078B64;
        v26[3] = &unk_1002745F8;
        v21 = &v28;
        v28 = v12;
        v22 = &v27;
        v27 = v10;
        [v16 readCharacteristicValues:v20 timeout:v11 completionQueue:v26 completionHandler:a4];
      }

      else
      {
        v23 = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_10007FAFC(v23);
          *buf = 138543618;
          v40 = v25;
          v41 = 2112;
          v42 = v10;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to read value for characteristic %@ because there is no server.", buf, 0x16u);
        }

        if (!v11 || !v12)
        {
          goto LABEL_21;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100078AE4;
        v29[3] = &unk_100273720;
        v21 = &v31;
        v31 = v12;
        v22 = &v30;
        v30 = v10;
        dispatch_async(v11, v29);
      }

LABEL_21:
      goto LABEL_22;
    }

    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      *buf = 138543362;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100078A64;
      block[3] = &unk_100273720;
      v34 = v12;
      v33 = v10;
      dispatch_async(v11, block);

      v16 = v34;
      goto LABEL_21;
    }
  }

  else
  {
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543362;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic is a requried parameter", buf, 0xCu);
    }

    if (v11 && v12)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000789E4;
      v35[3] = &unk_100273720;
      v36 = 0;
      v37 = v12;
      dispatch_async(v11, v35);

      v16 = v37;
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 count])
  {
    if (a4 >= 0.0)
    {
      v20 = [(HAPAccessory *)self server];
      v16 = v20;
      if (v20)
      {
        [v20 readCharacteristicValues:v10 timeout:v11 completionQueue:v12 completionHandler:a4];
      }

      else
      {
        v21 = self;
        v22 = sub_10007FAA0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = sub_10007FAFC(v21);
          *buf = 138543618;
          v31 = v23;
          v32 = 2112;
          v33 = v10;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to read characteristics %@ because there is no server.", buf, 0x16u);
        }

        if (v11 && v12)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100079254;
          v24[3] = &unk_100273660;
          v25 = v12;
          dispatch_async(v11, v24);
        }
      }

      goto LABEL_20;
    }

    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079108;
      block[3] = &unk_100273660;
      v27 = v12;
      dispatch_async(v11, block);
      v16 = v27;
LABEL_20:
    }
  }

  else
  {
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristics are required.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100078FBC;
      v28[3] = &unk_100273660;
      v29 = v12;
      dispatch_async(v11, v28);
      v16 = v29;
      goto LABEL_20;
    }
  }
}

- (void)writeCharacteristicValue:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    if (a4 >= 0.0)
    {
      v16 = [(HAPAccessory *)self server];
      if (v16)
      {
        v39 = v10;
        v20 = [NSArray arrayWithObjects:&v39 count:1];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000799B0;
        v27[3] = &unk_1002745F8;
        v21 = &v29;
        v29 = v12;
        v22 = &v28;
        v28 = v10;
        [v16 writeCharacteristicValues:v20 timeout:v11 completionQueue:v27 completionHandler:a4];
      }

      else
      {
        v23 = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_10007FAFC(v23);
          v26 = [v10 characteristic];
          *buf = 138543618;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to write value for characteristic %@ because there is no server.", buf, 0x16u);
        }

        if (!v11 || !v12)
        {
          goto LABEL_21;
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100079918;
        v30[3] = &unk_100273720;
        v21 = &v32;
        v32 = v12;
        v22 = &v31;
        v31 = v10;
        dispatch_async(v11, v30);
      }

LABEL_21:
      goto LABEL_22;
    }

    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      *buf = 138543362;
      v41 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079880;
      block[3] = &unk_100273720;
      v35 = v12;
      v34 = v10;
      dispatch_async(v11, block);

      v16 = v35;
      goto LABEL_21;
    }
  }

  else
  {
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543362;
      v41 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic write request is a requried parameter", buf, 0xCu);
    }

    if (v11 && v12)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000797E8;
      v36[3] = &unk_100273720;
      v37 = 0;
      v38 = v12;
      dispatch_async(v11, v36);

      v16 = v38;
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 completionQueue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 count])
  {
    if (a4 >= 0.0)
    {
      v20 = [(HAPAccessory *)self server];
      v16 = v20;
      if (v20)
      {
        [v20 writeCharacteristicValues:v10 timeout:v11 completionQueue:v12 completionHandler:a4];
      }

      else
      {
        v21 = self;
        v22 = sub_10007FAA0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = sub_10007FAFC(v21);
          *buf = 138543618;
          v31 = v23;
          v32 = 2112;
          v33 = v10;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to write characteristics %@ because there is no server.", buf, 0x16u);
        }

        if (v11 && v12)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10007A0DC;
          v24[3] = &unk_100273660;
          v25 = v12;
          dispatch_async(v11, v24);
        }
      }

      goto LABEL_20;
    }

    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(v13);
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079F90;
      block[3] = &unk_100273660;
      v27 = v12;
      dispatch_async(v11, block);
      v16 = v27;
LABEL_20:
    }
  }

  else
  {
    v17 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(v17);
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristic writes are required.", buf, 0xCu);
    }

    if (v11 && v12)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100079E44;
      v28[3] = &unk_100273660;
      v29 = v12;
      dispatch_async(v11, v28);
      v16 = v29;
      goto LABEL_20;
    }
  }
}

- (BOOL)_updateAndValidateServices
{
  v3 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [(HAPAccessory *)self services];
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    v33 = self;
    v34 = v4;
    v31 = *v40;
    while (2)
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        v10 = [v9 instanceID];
        v11 = [v3 containsObject:v10];

        if (v11)
        {
          v13 = sub_10007FAA0();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v28 = sub_10007FAFC(0);
          v29 = [v9 instanceID];
          v30 = [v29 stringValue];
          *buf = 138543618;
          v45 = v28;
          v46 = 2112;
          v47 = v30;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has service with duplicate instance ID '%@'", buf, 0x16u);

LABEL_32:
          goto LABEL_23;
        }

        v12 = [v9 instanceID];
        [v3 addObject:v12];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = [v9 characteristics];
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          while (2)
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              v19 = [v18 instanceID];
              v20 = [v3 containsObject:v19];

              if (v20)
              {
                v23 = sub_10007FAA0();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v24 = sub_10007FAFC(0);
                  v25 = [v18 instanceID];
                  v26 = [v25 stringValue];
                  *buf = 138543618;
                  v45 = v24;
                  v46 = 2112;
                  v47 = v26;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has characteristic with duplicate instance ID '%@'", buf, 0x16u);
                }

                v4 = v34;
                goto LABEL_23;
              }

              v21 = [v18 instanceID];
              [v3 addObject:v21];
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        self = v33;
        if (![(HAPAccessory *)v33 _updateService:v9])
        {
          v13 = sub_10007FAA0();
          v4 = v34;
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v28 = sub_10007FAFC(0);
          *buf = 138543362;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateService", buf, 0xCu);
          goto LABEL_32;
        }

        v8 = v8 + 1;
        v7 = v31;
        v4 = v34;
      }

      while (v8 != v32);
      v6 = [v34 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([(HAPAccessory *)self updateForAccessoryInformationService])
  {
    v22 = 1;
  }

  else
  {
    v4 = sub_10007FAA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(0);
      *buf = 138543362;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateForAccessoryInformationService", buf, 0xCu);
LABEL_23:
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_updateService:(id)a3
{
  if (a3)
  {
    [a3 setAccessory:self];
  }

  return 1;
}

- (BOOL)updateForAccessoryInformationService
{
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v2 = [(HAPAccessory *)self services];
  v3 = [v2 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v48;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        v9 = [v8 type];
        v10 = [v9 isEqualToString:@"0000003E-0000-1000-8000-4D69736D6574"];

        if (v10)
        {
          if (v5)
          {
            v38 = sub_10007FAA0();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = sub_10007FAFC(0);
              *buf = 138543362;
              v53 = v39;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has more than one Accessory Information Service", buf, 0xCu);
            }

            goto LABEL_43;
          }

          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v11 = [v5 characteristics];
      v12 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v44;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v44 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v43 + 1) + 8 * j);
            v17 = [v16 value];

            if (v17)
            {
              v18 = [v16 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v18;
              }

              else
              {
                v19 = 0;
              }

              v20 = v19;

              v21 = [HMFObjectCacheNSString hmf_cachedInstanceForString:v20];

              v22 = [v16 type];
              v23 = [v22 isEqualToString:@"00000023-0000-1000-8000-4D69736D6574"];

              if (v23)
              {
                [(HAPAccessory *)self setName:v21];
              }

              else
              {
                v24 = [v16 type];
                v25 = [v24 isEqualToString:@"00000020-0000-1000-8000-4D69736D6574"];

                if (v25)
                {
                  [(HAPAccessory *)self setManufacturer:v21];
                }

                else
                {
                  v26 = [v16 type];
                  v27 = [v26 isEqualToString:@"00000021-0000-1000-8000-4D69736D6574"];

                  if (v27)
                  {
                    [(HAPAccessory *)self setModel:v21];
                  }

                  else
                  {
                    v28 = [v16 type];
                    v29 = [v28 isEqualToString:@"00000030-0000-1000-8000-4D69736D6574"];

                    if (v29)
                    {
                      [(HAPAccessory *)self setSerialNumber:v21];
                    }

                    else
                    {
                      v30 = [v16 type];
                      v31 = [v30 isEqualToString:@"00000052-0000-1000-8000-4D69736D6574"];

                      if (v31)
                      {
                        [(HAPAccessory *)self setFirmwareVersion:v21];
                      }

                      else
                      {
                        v32 = [v16 type];
                        v33 = [v32 isEqualToString:@"00000220-0000-1000-8000-4D69736D6574"];

                        if (v33)
                        {
                          v34 = objc_opt_class();
                          v35 = [v16 value];
                          v36 = [v34 productDataStringFromData:v35];
                          [(HAPAccessory *)self setProductData:v36];
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v13);
      }

      v37 = 1;
      goto LABEL_44;
    }
  }

  else
  {
  }

  v5 = sub_10007FAA0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v40 = sub_10007FAFC(0);
    *buf = 138543362;
    v53 = v40;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@### Accessory is missing an Accessory Information Service", buf, 0xCu);
  }

LABEL_43:
  v37 = 0;
LABEL_44:

  return v37;
}

- (void)invalidate
{
  v2 = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(v2);
    v8 = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Invalidating and updating connection state for HAP Accessory: %@", &v8, 0x16u);
  }

  v5 = [(HAPAccessory *)v2 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HAPAccessory *)v2 delegate];
    [v7 accessory:v2 didUpdateConnectionState:0];
  }
}

- (BOOL)_validateCharacteristicValues
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [(HAPAccessory *)self services];
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v24 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [v7 characteristics];
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              if ([v13 shouldValidateValueAfterReading])
              {
                v14 = [v13 value];
                if (v14)
                {
                  v15 = v14;
                  v16 = [v13 properties];

                  if ((v16 & 2) != 0)
                  {
                    v17 = [v13 value];
                    v18 = [v13 validateValue:v17 outValue:0];

                    if (v18)
                    {
                      v20 = sub_10007FAA0();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        v21 = sub_10007FAFC(0);
                        v22 = [v13 type];
                        *buf = 138543874;
                        v34 = v21;
                        v35 = 2112;
                        v36 = v22;
                        v37 = 2112;
                        v38 = v18;
                        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[HAP Accessory] ### Failed to validate value with type %@ with error %@", buf, 0x20u);
                      }

                      v19 = 0;
                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v39 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v24;
      }

      v4 = [v2 countByEnumeratingWithState:&v29 objects:v40 count:16];
      v19 = 1;
    }

    while (v4);
  }

  else
  {
    v19 = 1;
  }

LABEL_24:

  return v19;
}

- (id)servicesOfType:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HAPAccessory *)self services];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)characteristicsOfType:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HAPAccessory *)self services];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) characteristicsOfType:v4];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)characteristicOfType:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (!v6 || !v7)
  {
    goto LABEL_8;
  }

  v10 = [(HAPAccessory *)self servicesOfType:v7];
  v11 = [v10 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v12 = [(HAPAccessory *)self servicesOfType:v8];
  v13 = [v12 firstObject];

  if (v13)
  {
    v11 = [v13 characteristicsOfType:v6];
    v9 = [v11 firstObject];
    v10 = v13;
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (BOOL)shouldMergeObject:(id)a3
{
  v4 = a3;
  if ([(HAPAccessory *)self isEqual:v4])
  {
    v5 = [(HAPAccessory *)self services];
    v6 = [NSSet setWithArray:v5];

    v23 = v4;
    v7 = [v4 services];
    v8 = [NSSet setWithArray:v7];

    v22 = v6;
    v9 = [v6 mutableCopy];
    [v9 intersectSet:v8];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (!v11)
    {
      v14 = 1;
      goto LABEL_18;
    }

    v12 = v11;
    v13 = *v25;
    v14 = 1;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v8 member:v16];
        if (v17)
        {
          if ([v16 shouldMergeObject:v17])
          {
            goto LABEL_13;
          }

          v18 = self;
          v19 = sub_10007FAA0();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10007FAFC(v18);
            *buf = 138543874;
            v29 = v20;
            v30 = 2112;
            v31 = v17;
            v32 = 2112;
            v33 = v10;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge service, %@, with existing service: %@", buf, 0x20u);
          }
        }

        v14 = 0;
LABEL_13:
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v12)
      {
LABEL_18:

        v4 = v23;
        goto LABEL_19;
      }
    }
  }

  v14 = 0;
LABEL_19:

  return v14 & 1;
}

- (BOOL)mergeObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    if ([(HAPAccessory *)self shouldMergeObject:v6])
    {
      v75 = v6;
      v7 = [(HAPAccessory *)self services];
      v8 = [NSSet setWithArray:v7];

      v76 = v4;
      v9 = [v4 services];
      v10 = [NSSet setWithArray:v9];

      v77 = v8;
      v11 = [(HAPAccessory *)v8 mutableCopy];
      [v11 minusSet:v10];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
      v78 = v12 != 0;
      v82 = v10;
      if (v12)
      {
        v13 = v12;
        v14 = *v92;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v92 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v91 + 1) + 8 * i);
            v17 = self;
            v18 = sub_10007FAA0();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = sub_10007FAFC(v17);
              *buf = 138543618;
              v99 = v19;
              v100 = 2112;
              v101 = v16;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Removed service: %@", buf, 0x16u);

              v10 = v82;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v13);
      }

      v20 = [v10 mutableCopy];
      v21 = v77;
      [v20 minusSet:v77];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v80 = v20;
      v22 = [v80 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v88;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v88 != v24)
            {
              objc_enumerationMutation(v80);
            }

            v26 = *(*(&v87 + 1) + 8 * j);
            v27 = self;
            v28 = sub_10007FAA0();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = sub_10007FAFC(v27);
              *buf = 138543618;
              v99 = v29;
              v100 = 2112;
              v101 = v26;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@Added service: %@", buf, 0x16u);
            }

            [v26 setAccessory:v27];
          }

          v23 = [v80 countByEnumeratingWithState:&v87 objects:v96 count:16];
        }

        while (v23);
        v78 = 1;
        v21 = v77;
        v10 = v82;
      }

      v30 = [(HAPAccessory *)v21 mutableCopy];
      [v30 minusSet:obj];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v79 = v30;
      v31 = [v79 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v84;
        do
        {
          for (k = 0; k != v32; k = k + 1)
          {
            if (*v84 != v33)
            {
              objc_enumerationMutation(v79);
            }

            v35 = *(*(&v83 + 1) + 8 * k);
            v36 = self;
            v37 = sub_10007FAA0();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = sub_10007FAFC(v36);
              *buf = 138543618;
              v99 = v38;
              v100 = 2112;
              v101 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing service: %@", buf, 0x16u);
            }

            v39 = [v10 member:v35];
            if (v39 && [v35 mergeObject:v39])
            {
              v40 = v36;
              v41 = sub_10007FAA0();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = sub_10007FAFC(v40);
                *buf = 138543618;
                v99 = v42;
                v100 = 2112;
                v101 = v35;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%{public}@Updated service: %@", buf, 0x16u);

                v10 = v82;
              }

              v78 = 1;
            }
          }

          v32 = [v79 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v32);
      }

      v43 = [v79 allObjects];
      v44 = [NSMutableArray arrayWithArray:v43];

      v45 = [v80 allObjects];
      [v44 addObjectsFromArray:v45];

      v46 = [v44 copy];
      [(HAPAccessory *)self setServices:v46];

      v47 = [(HAPAccessory *)self name];
      v6 = v75;
      v48 = [v75 name];
      v49 = [v47 isEqualToString:v48];

      v50 = v78;
      if ((v49 & 1) == 0)
      {
        v51 = [v75 name];
        [(HAPAccessory *)self setName:v51];

        v50 = 1;
      }

      v52 = [(HAPAccessory *)self manufacturer];
      v53 = [v75 manufacturer];
      v54 = [v52 isEqualToString:v53];

      v4 = v76;
      if ((v54 & 1) == 0)
      {
        v55 = [v75 manufacturer];
        [(HAPAccessory *)self setManufacturer:v55];

        v50 = 1;
      }

      v56 = [(HAPAccessory *)self model];
      v57 = [v75 model];
      v58 = [v56 isEqualToString:v57];

      if ((v58 & 1) == 0)
      {
        v59 = [v75 model];
        [(HAPAccessory *)self setModel:v59];

        v50 = 1;
      }

      v60 = [(HAPAccessory *)self serialNumber];
      v61 = [v75 serialNumber];
      v62 = [v60 isEqualToString:v61];

      if ((v62 & 1) == 0)
      {
        v63 = [v75 serialNumber];
        [(HAPAccessory *)self setSerialNumber:v63];

        v50 = 1;
      }

      v64 = [(HAPAccessory *)self firmwareVersion];
      v65 = [v75 firmwareVersion];
      v66 = [v64 isEqualToString:v65];

      if ((v66 & 1) == 0)
      {
        v67 = [v75 firmwareVersion];
        [(HAPAccessory *)self setFirmwareVersion:v67];

        v50 = 1;
      }

      v68 = [(HAPAccessory *)self productData];
      v69 = [v75 productData];
      v70 = [v68 isEqualToString:v69];

      if ((v70 & 1) == 0)
      {
        v71 = [v75 productData];
        [(HAPAccessory *)self setProductData:v71];

        v50 = 1;
      }

      v72 = v77;
    }

    else
    {
      v72 = self;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v73 = sub_10007FAFC(v72);
        *buf = 138543618;
        v99 = v73;
        v100 = 2112;
        v101 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Not merging with accessory: %@", buf, 0x16u);
      }

      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50 & 1;
}

+ (id)logCategory
{
  if (qword_1002ACC20 != -1)
  {
    sub_1001F8A54();
  }

  v3 = qword_1002ACC28;

  return v3;
}

- (HAPAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HAPAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end