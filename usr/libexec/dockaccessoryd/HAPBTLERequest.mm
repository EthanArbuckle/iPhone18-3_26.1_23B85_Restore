@interface HAPBTLERequest
- (HAPBTLERequest)init;
- (HMFBlockOperation)operation;
- (id)_initWithCharacteristic:(id)characteristic requestType:(unsigned __int8)type bodyData:(id)data shouldEncrypt:(BOOL)encrypt timeoutInterval:(double)interval;
- (id)_serializeHeader;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)serialize;
- (id)shortDescription;
- (void)cancelWithError:(id)error;
@end

@implementation HAPBTLERequest

- (HAPBTLERequest)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)_initWithCharacteristic:(id)characteristic requestType:(unsigned __int8)type bodyData:(id)data shouldEncrypt:(BOOL)encrypt timeoutInterval:(double)interval
{
  typeCopy = type;
  characteristicCopy = characteristic;
  dataCopy = data;
  v15 = dataCopy;
  if (typeCopy)
  {
    if (interval <= 0.0)
    {
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(0);
        *buf = 138543362;
        v31 = v17;
        v18 = "%{public}@[HAPBTLERequest] A timeout > 0 is required";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if ([dataCopy length] >= 0x10000)
    {
      v16 = sub_10007FAA0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_10007FAFC(0);
        *buf = 138543362;
        v31 = v17;
        v18 = "%{public}@[HAPBTLERequest] The body length must not exceed 64KB";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v29.receiver = self;
    v29.super_class = HAPBTLERequest;
    v21 = [(HAPBTLERequest *)&v29 init];
    if (v21)
    {
      service = [characteristicCopy service];
      service = v21->_service;
      v21->_service = service;

      objc_storeStrong(&v21->_characteristic, characteristic);
      v21->_type = typeCopy;
      v24 = [v15 copy];
      body = v21->_body;
      v21->_body = v24;

      v21->_encrypted = encrypt;
      v21->_timeoutInterval = interval;
      if (typeCopy != 255)
      {
        v26 = +[HAPBTLETransactionIdentifier randomTransactionIdentifier];
LABEL_18:
        identifier = v21->_identifier;
        v21->_identifier = v26;

        goto LABEL_19;
      }

      if ([v15 length] >= 2)
      {
        buf[0] = 0;
        [v15 getBytes:buf range:{1, 1}];
        v27 = [HAPBTLETransactionIdentifier alloc];
        v26 = [(HAPBTLETransactionIdentifier *)v27 initWithUnsignedCharValue:buf[0]];
        goto LABEL_18;
      }
    }

LABEL_19:
    self = v21;
    selfCopy = self;
    goto LABEL_12;
  }

  v16 = sub_10007FAA0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = sub_10007FAFC(0);
    *buf = 138543362;
    v31 = v17;
    v18 = "%{public}@[HAPBTLERequest] A request type is required";
    goto LABEL_10;
  }

LABEL_11:

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  shortDescription = [(HAPBTLERequest *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  v7 = [(HAPBTLERequest *)self type]+ 1;
  if (v7 > 9u)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_100273548[v7];
  }

  [(HAPBTLERequest *)self timeoutInterval];
  v10 = v9;
  if ([(HAPBTLERequest *)self isEncrypted])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  identifier = [(HAPBTLERequest *)self identifier];
  body = [(HAPBTLERequest *)self body];
  v14 = [body length];
  characteristic = [(HAPBTLERequest *)self characteristic];
  v16 = [NSString stringWithFormat:@"<%@%@, Type = %@, Timeout = %f, Encrypted = %@, Request Identifier = %@, Body Length = %tu, Characteristic = %@>", shortDescription, v6, v8, v10, v11, identifier, v14, characteristic];

  if (pointerCopy)
  {
  }

  return v16;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if (![(HAPBTLERequest *)self isFinished])
  {
    operation = [(HAPBTLERequest *)self operation];
    [operation cancelWithError:errorCopy];

    responseTimer = [(HAPBTLERequest *)self responseTimer];
    [responseTimer suspend];
  }
}

- (id)serialize
{
  if ([(HAPBTLERequest *)self type]== 255)
  {
    body = [(HAPBTLERequest *)self body];
    v4 = [body mutableCopy];
  }

  else
  {
    _serializeHeader = [(HAPBTLERequest *)self _serializeHeader];
    v4 = [_serializeHeader mutableCopy];

    body2 = [(HAPBTLERequest *)self body];
    v6 = [body2 length];

    if (!v6)
    {
      goto LABEL_6;
    }

    body = [(HAPBTLERequest *)self body];
    [v4 appendData:body];
  }

LABEL_6:

  return v4;
}

- (id)_serializeHeader
{
  v3 = [NSMutableData dataWithCapacity:6];
  type = [(HAPBTLERequest *)self type];
  [v3 appendBytes:&type length:1];
  identifier = [(HAPBTLERequest *)self identifier];
  unsignedCharValue = [identifier unsignedCharValue];

  v22 = unsignedCharValue;
  [v3 appendBytes:&v22 length:1];
  if ([(HAPBTLERequest *)self type]== 6 || [(HAPBTLERequest *)self type]== 8)
  {
    service = [(HAPBTLERequest *)self service];
    instanceID = [service instanceID];
    unsignedShortValue = [instanceID unsignedShortValue];

    v21 = unsignedShortValue;
    [v3 appendBytes:&v21 length:2];
  }

  else
  {
    characteristic = [(HAPBTLERequest *)self characteristic];
    v10 = characteristic;
    if (characteristic)
    {
      instanceID2 = [characteristic instanceID];
      unsignedShortValue2 = [instanceID2 unsignedShortValue];
    }

    else
    {
      unsignedShortValue2 = 0;
    }

    v20 = unsignedShortValue2;
    [v3 appendBytes:&v20 length:2];
  }

  body = [(HAPBTLERequest *)self body];
  v14 = [body length];

  if (v14)
  {
    body2 = [(HAPBTLERequest *)self body];
    v16 = [body2 length];

    v19 = v16;
    [v3 appendBytes:&v19 length:2];
  }

  v17 = [v3 copy];

  return v17;
}

- (HMFBlockOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end