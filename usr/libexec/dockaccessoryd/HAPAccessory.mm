@interface HAPAccessory
+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier;
+ (id)instanceIDForUniqueIdentifier:(id)identifier;
+ (id)logCategory;
+ (id)productDataStringFromData:(id)data;
+ (id)serverIdentifierWithUniqueIdentifier:(id)identifier;
- (BOOL)_updateAndValidateServices;
- (BOOL)_updateService:(id)service;
- (BOOL)_validateCharacteristicValues;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)mergeObject:(id)object;
- (BOOL)shouldMergeObject:(id)object;
- (BOOL)updateForAccessoryInformationService;
- (HAPAccessory)init;
- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services;
- (HAPAccessoryDelegate)delegate;
- (HAPAccessoryServer)server;
- (NSNumber)category;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)characteristicOfType:(id)type serviceType:(id)serviceType;
- (id)characteristicsOfType:(id)type;
- (id)servicesOfType:(id)type;
- (id)shortDescription;
- (int)consecutiveFailedPingCount;
- (unint64_t)hash;
- (void)invalidate;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)setConsecutiveFailedPingCount:(int)count;
- (void)writeCharacteristicValue:(id)value timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessory

+ (id)productDataStringFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 hmf_hexadecimalStringWithOptions:2];

  return v6;
}

+ (id)serverIdentifierWithUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"+"];
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

+ (id)instanceIDForUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"+"];
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

+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"+"];
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

- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services
{
  serverCopy = server;
  dCopy = d;
  servicesCopy = services;
  if (sub_10007EA14(dCopy))
  {
    v20.receiver = self;
    v20.super_class = HAPAccessory;
    v11 = [(HAPAccessory *)&v20 init];
    self = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_server, serverCopy);
      self->_linkType = [serverCopy linkType];
      self->_communicationProtocol = [serverCopy communicationProtocol];
      objc_storeStrong(&self->_instanceID, d);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.HAPAccessory", v12);
      workQueue = self->_workQueue;
      self->_workQueue = v13;

      if (servicesCopy)
      {
        if ([servicesCopy count] >= 0x65)
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

        objc_storeStrong(&self->_services, services);
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
    selfCopy = self;
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

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (unint64_t)hash
{
  identifier = [(HAPAccessory *)self identifier];
  v4 = [identifier hash];
  instanceID = [(HAPAccessory *)self instanceID];
  v6 = [instanceID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    instanceID = [(HAPAccessory *)self instanceID];
    instanceID2 = [(HAPAccessory *)v6 instanceID];
    v9 = [instanceID isEqualToNumber:instanceID2];

    if (!v9)
    {
      goto LABEL_10;
    }

    identifier = [(HAPAccessory *)self identifier];
    identifier2 = [(HAPAccessory *)v6 identifier];
    v12 = [identifier isEqualToString:identifier2];

    if (!v12)
    {
      goto LABEL_10;
    }

    linkType = [(HAPAccessory *)self linkType];
    if (linkType == [(HAPAccessory *)v6 linkType])
    {
      communicationProtocol = [(HAPAccessory *)self communicationProtocol];
      v15 = communicationProtocol == [(HAPAccessory *)v6 communicationProtocol];
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
  instanceID = [(HAPAccessory *)self instanceID];
  [v3 appendFormat:@"Instance ID: %@    ", instanceID];

  server = [(HAPAccessory *)self server];
  name = [server name];
  server2 = [(HAPAccessory *)self server];
  identifier = [server2 identifier];
  [v3 appendFormat:@"Server: '%@' (%@)    ", name, identifier];

  if ([(HAPAccessory *)self isPrimary])
  {
    category = [(HAPAccessory *)self category];
    [v3 appendFormat:@"Category: %@    ", category];
  }

  name2 = [(HAPAccessory *)self name];

  if (name2)
  {
    name3 = [(HAPAccessory *)self name];
    [v3 appendFormat:@"Name: %@    ", name3];
  }

  model = [(HAPAccessory *)self model];
  if (model || ([(HAPAccessory *)self manufacturer], (model = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    serialNumber = [(HAPAccessory *)self serialNumber];

    if (!serialNumber)
    {
      goto LABEL_15;
    }
  }

  model2 = [(HAPAccessory *)self model];

  if (model2)
  {
    model3 = [(HAPAccessory *)self model];
    [v3 appendFormat:@"Model: %@    ", model3];
  }

  manufacturer = [(HAPAccessory *)self manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [(HAPAccessory *)self manufacturer];
    [v3 appendFormat:@"Manufacturer: %@    ", manufacturer2];
  }

  serialNumber2 = [(HAPAccessory *)self serialNumber];

  if (serialNumber2)
  {
    serialNumber3 = [(HAPAccessory *)self serialNumber];
    [v3 appendFormat:@"Serial Number: %@    ", serialNumber3];
  }

  [v3 appendFormat:@"\n"];
LABEL_15:

  return v3;
}

- (BOOL)isPaired
{
  server = [(HAPAccessory *)self server];
  isPaired = [server isPaired];

  return isPaired;
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

- (void)setConsecutiveFailedPingCount:(int)count
{
  os_unfair_lock_lock_with_options();
  self->_consecutiveFailedPingCount = count;

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
      identifier = [v4 identifier];
      stringValue = [(NSNumber *)self->_instanceID stringValue];
      v7 = [NSString stringWithFormat:@"%@%@%@", identifier, @"+", stringValue];
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
  server = [(HAPAccessory *)self server];
  if (server && (v4 = server, v5 = [(HAPAccessory *)self isPrimary], v4, v5))
  {
    server2 = [(HAPAccessory *)self server];
    category = [server2 category];
  }

  else
  {
    category = 0;
  }

  return category;
}

- (id)shortDescription
{
  if (sub_100014954())
  {
    name = [(HAPAccessory *)self name];
    identifier = [(HAPAccessory *)self identifier];
    instanceID = [(HAPAccessory *)self instanceID];
    v6 = [NSString stringWithFormat:@"%@/%@+%@", name, identifier, instanceID];
  }

  else
  {
    name = [(HAPAccessory *)self identifier];
    identifier = [(HAPAccessory *)self instanceID];
    v6 = [NSString stringWithFormat:@"%@+%@", name, identifier];
  }

  return v6;
}

- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  characteristicCopy = characteristic;
  queueCopy = queue;
  handlerCopy = handler;
  if (characteristicCopy)
  {
    if (timeout >= 0.0)
    {
      server = [(HAPAccessory *)self server];
      if (server)
      {
        v38 = characteristicCopy;
        v20 = [NSArray arrayWithObjects:&v38 count:1];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100078B64;
        v26[3] = &unk_1002745F8;
        v21 = &v28;
        v28 = handlerCopy;
        v22 = &v27;
        v27 = characteristicCopy;
        [server readCharacteristicValues:v20 timeout:queueCopy completionQueue:v26 completionHandler:timeout];
      }

      else
      {
        selfCopy = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_10007FAFC(selfCopy);
          *buf = 138543618;
          v40 = v25;
          v41 = 2112;
          v42 = characteristicCopy;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to read value for characteristic %@ because there is no server.", buf, 0x16u);
        }

        if (!queueCopy || !handlerCopy)
        {
          goto LABEL_21;
        }

        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100078AE4;
        v29[3] = &unk_100273720;
        v21 = &v31;
        v31 = handlerCopy;
        v22 = &v30;
        v30 = characteristicCopy;
        dispatch_async(queueCopy, v29);
      }

LABEL_21:
      goto LABEL_22;
    }

    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100078A64;
      block[3] = &unk_100273720;
      v34 = handlerCopy;
      v33 = characteristicCopy;
      dispatch_async(queueCopy, block);

      server = v34;
      goto LABEL_21;
    }
  }

  else
  {
    selfCopy3 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy3);
      *buf = 138543362;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic is a requried parameter", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000789E4;
      v35[3] = &unk_100273720;
      v36 = 0;
      v37 = handlerCopy;
      dispatch_async(queueCopy, v35);

      server = v37;
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      server = [(HAPAccessory *)self server];
      v16 = server;
      if (server)
      {
        [server readCharacteristicValues:valuesCopy timeout:queueCopy completionQueue:handlerCopy completionHandler:timeout];
      }

      else
      {
        selfCopy = self;
        v22 = sub_10007FAA0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = sub_10007FAFC(selfCopy);
          *buf = 138543618;
          v31 = v23;
          v32 = 2112;
          v33 = valuesCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to read characteristics %@ because there is no server.", buf, 0x16u);
        }

        if (queueCopy && handlerCopy)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100079254;
          v24[3] = &unk_100273660;
          v25 = handlerCopy;
          dispatch_async(queueCopy, v24);
        }
      }

      goto LABEL_20;
    }

    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079108;
      block[3] = &unk_100273660;
      v27 = handlerCopy;
      dispatch_async(queueCopy, block);
      v16 = v27;
LABEL_20:
    }
  }

  else
  {
    selfCopy3 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy3);
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristics are required.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100078FBC;
      v28[3] = &unk_100273660;
      v29 = handlerCopy;
      dispatch_async(queueCopy, v28);
      v16 = v29;
      goto LABEL_20;
    }
  }
}

- (void)writeCharacteristicValue:(id)value timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valueCopy = value;
  queueCopy = queue;
  handlerCopy = handler;
  if (valueCopy)
  {
    if (timeout >= 0.0)
    {
      server = [(HAPAccessory *)self server];
      if (server)
      {
        v39 = valueCopy;
        v20 = [NSArray arrayWithObjects:&v39 count:1];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000799B0;
        v27[3] = &unk_1002745F8;
        v21 = &v29;
        v29 = handlerCopy;
        v22 = &v28;
        v28 = valueCopy;
        [server writeCharacteristicValues:v20 timeout:queueCopy completionQueue:v27 completionHandler:timeout];
      }

      else
      {
        selfCopy = self;
        v24 = sub_10007FAA0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_10007FAFC(selfCopy);
          characteristic = [valueCopy characteristic];
          *buf = 138543618;
          v41 = v25;
          v42 = 2112;
          v43 = characteristic;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to write value for characteristic %@ because there is no server.", buf, 0x16u);
        }

        if (!queueCopy || !handlerCopy)
        {
          goto LABEL_21;
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100079918;
        v30[3] = &unk_100273720;
        v21 = &v32;
        v32 = handlerCopy;
        v22 = &v31;
        v31 = valueCopy;
        dispatch_async(queueCopy, v30);
      }

LABEL_21:
      goto LABEL_22;
    }

    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v41 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079880;
      block[3] = &unk_100273720;
      v35 = handlerCopy;
      v34 = valueCopy;
      dispatch_async(queueCopy, block);

      server = v35;
      goto LABEL_21;
    }
  }

  else
  {
    selfCopy3 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy3);
      *buf = 138543362;
      v41 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic write request is a requried parameter", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000797E8;
      v36[3] = &unk_100273720;
      v37 = 0;
      v38 = handlerCopy;
      dispatch_async(queueCopy, v36);

      server = v38;
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout completionQueue:(id)queue completionHandler:(id)handler
{
  valuesCopy = values;
  queueCopy = queue;
  handlerCopy = handler;
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      server = [(HAPAccessory *)self server];
      v16 = server;
      if (server)
      {
        [server writeCharacteristicValues:valuesCopy timeout:queueCopy completionQueue:handlerCopy completionHandler:timeout];
      }

      else
      {
        selfCopy = self;
        v22 = sub_10007FAA0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = sub_10007FAFC(selfCopy);
          *buf = 138543618;
          v31 = v23;
          v32 = 2112;
          v33 = valuesCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to write characteristics %@ because there is no server.", buf, 0x16u);
        }

        if (queueCopy && handlerCopy)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10007A0DC;
          v24[3] = &unk_100273660;
          v25 = handlerCopy;
          dispatch_async(queueCopy, v24);
        }
      }

      goto LABEL_20;
    }

    selfCopy2 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_10007FAFC(selfCopy2);
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100079F90;
      block[3] = &unk_100273660;
      v27 = handlerCopy;
      dispatch_async(queueCopy, block);
      v16 = v27;
LABEL_20:
    }
  }

  else
  {
    selfCopy3 = self;
    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_10007FAFC(selfCopy3);
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristic writes are required.", buf, 0xCu);
    }

    if (queueCopy && handlerCopy)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100079E44;
      v28[3] = &unk_100273660;
      v29 = handlerCopy;
      dispatch_async(queueCopy, v28);
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
  services = [(HAPAccessory *)self services];
  v5 = [services countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    selfCopy = self;
    v34 = services;
    v31 = *v40;
    while (2)
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v39 + 1) + 8 * v8);
        instanceID = [v9 instanceID];
        v11 = [v3 containsObject:instanceID];

        if (v11)
        {
          characteristics = sub_10007FAA0();
          if (!os_log_type_enabled(characteristics, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v28 = sub_10007FAFC(0);
          instanceID2 = [v9 instanceID];
          stringValue = [instanceID2 stringValue];
          *buf = 138543618;
          v45 = v28;
          v46 = 2112;
          v47 = stringValue;
          _os_log_impl(&_mh_execute_header, characteristics, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has service with duplicate instance ID '%@'", buf, 0x16u);

LABEL_32:
          goto LABEL_23;
        }

        instanceID3 = [v9 instanceID];
        [v3 addObject:instanceID3];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        characteristics = [v9 characteristics];
        v14 = [characteristics countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(characteristics);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              instanceID4 = [v18 instanceID];
              v20 = [v3 containsObject:instanceID4];

              if (v20)
              {
                v23 = sub_10007FAA0();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v24 = sub_10007FAFC(0);
                  instanceID5 = [v18 instanceID];
                  stringValue2 = [instanceID5 stringValue];
                  *buf = 138543618;
                  v45 = v24;
                  v46 = 2112;
                  v47 = stringValue2;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has characteristic with duplicate instance ID '%@'", buf, 0x16u);
                }

                services = v34;
                goto LABEL_23;
              }

              instanceID6 = [v18 instanceID];
              [v3 addObject:instanceID6];
            }

            v15 = [characteristics countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        if (![(HAPAccessory *)selfCopy _updateService:v9])
        {
          characteristics = sub_10007FAA0();
          services = v34;
          if (!os_log_type_enabled(characteristics, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v28 = sub_10007FAFC(0);
          *buf = 138543362;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, characteristics, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateService", buf, 0xCu);
          goto LABEL_32;
        }

        v8 = v8 + 1;
        v7 = v31;
        services = v34;
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
    services = sub_10007FAA0();
    if (os_log_type_enabled(services, OS_LOG_TYPE_ERROR))
    {
      characteristics = sub_10007FAFC(0);
      *buf = 138543362;
      v45 = characteristics;
      _os_log_impl(&_mh_execute_header, services, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateForAccessoryInformationService", buf, 0xCu);
LABEL_23:
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_updateService:(id)service
{
  if (service)
  {
    [service setAccessory:self];
  }

  return 1;
}

- (BOOL)updateForAccessoryInformationService
{
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  services = [(HAPAccessory *)self services];
  v3 = [services countByEnumeratingWithState:&v47 objects:v54 count:16];
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
          objc_enumerationMutation(services);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        type = [v8 type];
        v10 = [type isEqualToString:@"0000003E-0000-1000-8000-4D69736D6574"];

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

      v4 = [services countByEnumeratingWithState:&v47 objects:v54 count:16];
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
      characteristics = [v5 characteristics];
      v12 = [characteristics countByEnumeratingWithState:&v43 objects:v51 count:16];
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
              objc_enumerationMutation(characteristics);
            }

            v16 = *(*(&v43 + 1) + 8 * j);
            value = [v16 value];

            if (value)
            {
              value2 = [v16 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = value2;
              }

              else
              {
                v19 = 0;
              }

              v20 = v19;

              v21 = [HMFObjectCacheNSString hmf_cachedInstanceForString:v20];

              type2 = [v16 type];
              v23 = [type2 isEqualToString:@"00000023-0000-1000-8000-4D69736D6574"];

              if (v23)
              {
                [(HAPAccessory *)self setName:v21];
              }

              else
              {
                type3 = [v16 type];
                v25 = [type3 isEqualToString:@"00000020-0000-1000-8000-4D69736D6574"];

                if (v25)
                {
                  [(HAPAccessory *)self setManufacturer:v21];
                }

                else
                {
                  type4 = [v16 type];
                  v27 = [type4 isEqualToString:@"00000021-0000-1000-8000-4D69736D6574"];

                  if (v27)
                  {
                    [(HAPAccessory *)self setModel:v21];
                  }

                  else
                  {
                    type5 = [v16 type];
                    v29 = [type5 isEqualToString:@"00000030-0000-1000-8000-4D69736D6574"];

                    if (v29)
                    {
                      [(HAPAccessory *)self setSerialNumber:v21];
                    }

                    else
                    {
                      type6 = [v16 type];
                      v31 = [type6 isEqualToString:@"00000052-0000-1000-8000-4D69736D6574"];

                      if (v31)
                      {
                        [(HAPAccessory *)self setFirmwareVersion:v21];
                      }

                      else
                      {
                        type7 = [v16 type];
                        v33 = [type7 isEqualToString:@"00000220-0000-1000-8000-4D69736D6574"];

                        if (v33)
                        {
                          v34 = objc_opt_class();
                          value3 = [v16 value];
                          v36 = [v34 productDataStringFromData:value3];
                          [(HAPAccessory *)self setProductData:v36];
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v13 = [characteristics countByEnumeratingWithState:&v43 objects:v51 count:16];
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
  selfCopy = self;
  v3 = sub_10007FAA0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = sub_10007FAFC(selfCopy);
    v8 = 138543618;
    v9 = v4;
    v10 = 2112;
    v11 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@Invalidating and updating connection state for HAP Accessory: %@", &v8, 0x16u);
  }

  delegate = [(HAPAccessory *)selfCopy delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HAPAccessory *)selfCopy delegate];
    [delegate2 accessory:selfCopy didUpdateConnectionState:0];
  }
}

- (BOOL)_validateCharacteristicValues
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  services = [(HAPAccessory *)self services];
  v3 = [services countByEnumeratingWithState:&v29 objects:v40 count:16];
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
          objc_enumerationMutation(services);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        characteristics = [v7 characteristics];
        v9 = [characteristics countByEnumeratingWithState:&v25 objects:v39 count:16];
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
                objc_enumerationMutation(characteristics);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              if ([v13 shouldValidateValueAfterReading])
              {
                value = [v13 value];
                if (value)
                {
                  v15 = value;
                  properties = [v13 properties];

                  if ((properties & 2) != 0)
                  {
                    value2 = [v13 value];
                    v18 = [v13 validateValue:value2 outValue:0];

                    if (v18)
                    {
                      v20 = sub_10007FAA0();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        v21 = sub_10007FAFC(0);
                        type = [v13 type];
                        *buf = 138543874;
                        v34 = v21;
                        v35 = 2112;
                        v36 = type;
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

            v10 = [characteristics countByEnumeratingWithState:&v25 objects:v39 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v24;
      }

      v4 = [services countByEnumeratingWithState:&v29 objects:v40 count:16];
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

- (id)servicesOfType:(id)type
{
  typeCopy = type;
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)characteristicsOfType:(id)type
{
  typeCopy = type;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(services);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) characteristicsOfType:typeCopy];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)characteristicOfType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v8 = serviceTypeCopy;
  v11FirstObject = 0;
  if (!typeCopy || !serviceTypeCopy)
  {
    goto LABEL_8;
  }

  v10 = [(HAPAccessory *)self servicesOfType:serviceTypeCopy];
  firstObject = [v10 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11FirstObject = 0;
    goto LABEL_7;
  }

  v12 = [(HAPAccessory *)self servicesOfType:v8];
  firstObject2 = [v12 firstObject];

  if (firstObject2)
  {
    firstObject = [firstObject2 characteristicsOfType:typeCopy];
    v11FirstObject = [firstObject firstObject];
    v10 = firstObject2;
LABEL_7:

    goto LABEL_8;
  }

  v11FirstObject = 0;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v11FirstObject;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (BOOL)shouldMergeObject:(id)object
{
  objectCopy = object;
  if ([(HAPAccessory *)self isEqual:objectCopy])
  {
    services = [(HAPAccessory *)self services];
    v6 = [NSSet setWithArray:services];

    v23 = objectCopy;
    services2 = [objectCopy services];
    v8 = [NSSet setWithArray:services2];

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

          selfCopy = self;
          v19 = sub_10007FAA0();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_10007FAFC(selfCopy);
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

        objectCopy = v23;
        goto LABEL_19;
      }
    }
  }

  v14 = 0;
LABEL_19:

  return v14 & 1;
}

- (BOOL)mergeObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
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
      services = [(HAPAccessory *)self services];
      v8 = [NSSet setWithArray:services];

      v76 = objectCopy;
      services2 = [objectCopy services];
      v10 = [NSSet setWithArray:services2];

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
            selfCopy = self;
            v18 = sub_10007FAA0();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = sub_10007FAFC(selfCopy);
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
            selfCopy2 = self;
            v28 = sub_10007FAA0();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = sub_10007FAFC(selfCopy2);
              *buf = 138543618;
              v99 = v29;
              v100 = 2112;
              v101 = v26;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%{public}@Added service: %@", buf, 0x16u);
            }

            [v26 setAccessory:selfCopy2];
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
            selfCopy3 = self;
            v37 = sub_10007FAA0();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = sub_10007FAFC(selfCopy3);
              *buf = 138543618;
              v99 = v38;
              v100 = 2112;
              v101 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing service: %@", buf, 0x16u);
            }

            v39 = [v10 member:v35];
            if (v39 && [v35 mergeObject:v39])
            {
              v40 = selfCopy3;
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

      allObjects = [v79 allObjects];
      v44 = [NSMutableArray arrayWithArray:allObjects];

      allObjects2 = [v80 allObjects];
      [v44 addObjectsFromArray:allObjects2];

      v46 = [v44 copy];
      [(HAPAccessory *)self setServices:v46];

      name = [(HAPAccessory *)self name];
      v6 = v75;
      name2 = [v75 name];
      v49 = [name isEqualToString:name2];

      v50 = v78;
      if ((v49 & 1) == 0)
      {
        name3 = [v75 name];
        [(HAPAccessory *)self setName:name3];

        v50 = 1;
      }

      manufacturer = [(HAPAccessory *)self manufacturer];
      manufacturer2 = [v75 manufacturer];
      v54 = [manufacturer isEqualToString:manufacturer2];

      objectCopy = v76;
      if ((v54 & 1) == 0)
      {
        manufacturer3 = [v75 manufacturer];
        [(HAPAccessory *)self setManufacturer:manufacturer3];

        v50 = 1;
      }

      model = [(HAPAccessory *)self model];
      model2 = [v75 model];
      v58 = [model isEqualToString:model2];

      if ((v58 & 1) == 0)
      {
        model3 = [v75 model];
        [(HAPAccessory *)self setModel:model3];

        v50 = 1;
      }

      serialNumber = [(HAPAccessory *)self serialNumber];
      serialNumber2 = [v75 serialNumber];
      v62 = [serialNumber isEqualToString:serialNumber2];

      if ((v62 & 1) == 0)
      {
        serialNumber3 = [v75 serialNumber];
        [(HAPAccessory *)self setSerialNumber:serialNumber3];

        v50 = 1;
      }

      firmwareVersion = [(HAPAccessory *)self firmwareVersion];
      firmwareVersion2 = [v75 firmwareVersion];
      v66 = [firmwareVersion isEqualToString:firmwareVersion2];

      if ((v66 & 1) == 0)
      {
        firmwareVersion3 = [v75 firmwareVersion];
        [(HAPAccessory *)self setFirmwareVersion:firmwareVersion3];

        v50 = 1;
      }

      productData = [(HAPAccessory *)self productData];
      productData2 = [v75 productData];
      v70 = [productData isEqualToString:productData2];

      if ((v70 & 1) == 0)
      {
        productData3 = [v75 productData];
        [(HAPAccessory *)self setProductData:productData3];

        v50 = 1;
      }

      selfCopy4 = v77;
    }

    else
    {
      selfCopy4 = self;
      v10 = sub_10007FAA0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v73 = sub_10007FAFC(selfCopy4);
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