@interface HAPBTLERequest
- (HAPBTLERequest)init;
- (HMFBlockOperation)operation;
- (id)_initWithCharacteristic:(id)a3 requestType:(unsigned __int8)a4 bodyData:(id)a5 shouldEncrypt:(BOOL)a6 timeoutInterval:(double)a7;
- (id)_serializeHeader;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)serialize;
- (id)shortDescription;
- (void)cancelWithError:(id)a3;
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

- (id)_initWithCharacteristic:(id)a3 requestType:(unsigned __int8)a4 bodyData:(id)a5 shouldEncrypt:(BOOL)a6 timeoutInterval:(double)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a5;
  v15 = v14;
  if (v10)
  {
    if (a7 <= 0.0)
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

    if ([v14 length] >= 0x10000)
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
      v22 = [v13 service];
      service = v21->_service;
      v21->_service = v22;

      objc_storeStrong(&v21->_characteristic, a3);
      v21->_type = v10;
      v24 = [v15 copy];
      body = v21->_body;
      v21->_body = v24;

      v21->_encrypted = a6;
      v21->_timeoutInterval = a7;
      if (v10 != 255)
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
    v19 = self;
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

  v19 = 0;
LABEL_12:

  return v19;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HAPBTLERequest *)self shortDescription];
  if (v3)
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

  v12 = [(HAPBTLERequest *)self identifier];
  v13 = [(HAPBTLERequest *)self body];
  v14 = [v13 length];
  v15 = [(HAPBTLERequest *)self characteristic];
  v16 = [NSString stringWithFormat:@"<%@%@, Type = %@, Timeout = %f, Encrypted = %@, Request Identifier = %@, Body Length = %tu, Characteristic = %@>", v5, v6, v8, v10, v11, v12, v14, v15];

  if (v3)
  {
  }

  return v16;
}

- (void)cancelWithError:(id)a3
{
  v6 = a3;
  if (![(HAPBTLERequest *)self isFinished])
  {
    v4 = [(HAPBTLERequest *)self operation];
    [v4 cancelWithError:v6];

    v5 = [(HAPBTLERequest *)self responseTimer];
    [v5 suspend];
  }
}

- (id)serialize
{
  if ([(HAPBTLERequest *)self type]== 255)
  {
    v7 = [(HAPBTLERequest *)self body];
    v4 = [v7 mutableCopy];
  }

  else
  {
    v3 = [(HAPBTLERequest *)self _serializeHeader];
    v4 = [v3 mutableCopy];

    v5 = [(HAPBTLERequest *)self body];
    v6 = [v5 length];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [(HAPBTLERequest *)self body];
    [v4 appendData:v7];
  }

LABEL_6:

  return v4;
}

- (id)_serializeHeader
{
  v3 = [NSMutableData dataWithCapacity:6];
  v23 = [(HAPBTLERequest *)self type];
  [v3 appendBytes:&v23 length:1];
  v4 = [(HAPBTLERequest *)self identifier];
  v5 = [v4 unsignedCharValue];

  v22 = v5;
  [v3 appendBytes:&v22 length:1];
  if ([(HAPBTLERequest *)self type]== 6 || [(HAPBTLERequest *)self type]== 8)
  {
    v6 = [(HAPBTLERequest *)self service];
    v7 = [v6 instanceID];
    v8 = [v7 unsignedShortValue];

    v21 = v8;
    [v3 appendBytes:&v21 length:2];
  }

  else
  {
    v9 = [(HAPBTLERequest *)self characteristic];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 instanceID];
      v12 = [v11 unsignedShortValue];
    }

    else
    {
      v12 = 0;
    }

    v20 = v12;
    [v3 appendBytes:&v20 length:2];
  }

  v13 = [(HAPBTLERequest *)self body];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(HAPBTLERequest *)self body];
    v16 = [v15 length];

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