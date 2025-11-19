@interface HAPBTLEControlPacket
+ (id)packetWithSerializedData:(id)a3 error:(id *)a4;
+ (id)shortDescription;
- (HAPBTLEControlPacket)init;
- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 continuationPacket:(BOOL)a5 packetPayload:(id)a6 maximumLength:(unint64_t)a7;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)serialize;
- (id)shortDescription;
@end

@implementation HAPBTLEControlPacket

- (HAPBTLEControlPacket)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)packetWithSerializedData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    v6 = @"The control field length is invalid.";
    goto LABEL_7;
  }

  buf[0] = 0;
  [v5 getBytes:buf range:{0, 1}];
  if (buf[0])
  {
    v6 = @"Invalid control field version.";
    goto LABEL_7;
  }

  if ((buf[0] & 0x70) != 0)
  {
    v6 = @"Reserved bits must be zero.";
LABEL_7:
    v7 = [NSError hapErrorWithcode:9 description:@"Failed to parse control field." reason:v6 suggestion:0 underlyingError:0];
    v8 = v7;
LABEL_8:
    v9 = 0;
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = (buf[0] >> 1) & 7;
  if (v9 > 1)
  {
    v22 = [NSString stringWithFormat:@"Invalid control type: %u.", v9];
    v7 = [NSError hapErrorWithcode:9 description:@"Failed to parse control field." reason:v22 suggestion:0 underlyingError:0];
    v23 = v7;

    goto LABEL_8;
  }

  if ((buf[0] & 0x80) != 0)
  {
    if ([v5 length] <= 1)
    {
      v7 = [NSError hapErrorWithcode:9 description:@"Failed to parse control field." reason:@"The control field length is invalid for a continuation payload." suggestion:0 underlyingError:0];
      v24 = v7;
      goto LABEL_9;
    }

    v25 = 0;
    v10 = 1;
    [v5 getBytes:&v25 range:{1, 1}];
    v7 = 0;
    v11 = v25;
    v12 = 2;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v7 = 0;
    v12 = 1;
  }

LABEL_10:

  v13 = v7;
  if (v12)
  {
    v14 = [[HAPBTLETransactionIdentifier alloc] initWithUnsignedCharValue:v11];
    v15 = [v5 subdataWithRange:{v12, objc_msgSend(v5, "length") - v12}];
    v16 = [[HAPBTLEControlPacket alloc] initWithControlType:v9 transactionIdentifier:v14 continuationPacket:v10 packetPayload:v15 maximumLength:-1];
  }

  else
  {
    v17 = sub_10007FAA0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_10007FAFC(0);
      v19 = +[HAPBTLEControlPacket shortDescription];
      *buf = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse control field with error: %@", buf, 0x20u);
    }

    if (a4)
    {
      v20 = v13;
      v16 = 0;
      *a4 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 continuationPacket:(BOOL)a5 packetPayload:(id)a6 maximumLength:(unint64_t)a7
{
  v9 = a5;
  v13 = a4;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = HAPBTLEControlPacket;
  v15 = [(HAPBTLEControlPacket *)&v27 init];
  v16 = v15;
  if (!v15)
  {
LABEL_12:
    v23 = v16;
    goto LABEL_13;
  }

  v15->_type = a3;
  objc_storeStrong(&v15->_transactionIdentifier, a4);
  v16->_continuationPacket = v9;
  if (v9)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = a7 >= v17;
  v19 = (a7 - v17);
  if (v18)
  {
    if ([v14 length] < v19)
    {
      v19 = [v14 length];
    }

    v24 = [v14 subdataWithRange:{0, v19}];
    payload = v16->_payload;
    v16->_payload = v24;

    goto LABEL_12;
  }

  v20 = sub_10007FAA0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_10007FAFC(0);
    v22 = [(HAPBTLEControlPacket *)v16 shortDescription];
    *buf = 138543874;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    v32 = 2048;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@[%@] The maximum packet length must be greater than the header length: %tu", buf, 0x20u);
  }

  v23 = 0;
LABEL_13:

  return v23;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = [(HAPBTLEControlPacket *)self shortDescription];
  if (v3)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  v7 = [(HAPBTLEControlPacket *)self type];
  v8 = @"unknown";
  if (v7 == 1)
  {
    v8 = @"response";
  }

  if (!v7)
  {
    v8 = @"request";
  }

  v9 = v8;
  v10 = [(HAPBTLEControlPacket *)self transactionIdentifier];
  v11 = [v10 unsignedCharValue];
  v12 = [(HAPBTLEControlPacket *)self payload];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Payload Length = %tu>", v5, v6, v9, v11, [v12 length]);

  if (v3)
  {
  }

  return v13;
}

- (id)serialize
{
  v3 = [(HAPBTLEControlPacket *)self type];
  v4 = [(HAPBTLEControlPacket *)self transactionIdentifier];
  v5 = [v4 unsignedCharValue];
  v6 = [(HAPBTLEControlPacket *)self isContinuationPacket];
  buf[0] = v5;
  v7 = [NSMutableData dataWithCapacity:2];
  v8 = v7;
  v9 = 2 * v3;
  if (v6)
  {
    v9 = (2 * v3) | 0x80;
  }

  v16 = v9;
  [v7 appendBytes:&v16 length:1];
  if (v6)
  {
    [v8 appendBytes:buf length:1];
  }

  if (v8)
  {
    v10 = [v8 mutableCopy];
    v11 = [(HAPBTLEControlPacket *)self payload];
    [v10 appendData:v11];

    v12 = [v10 copy];
  }

  else
  {
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(0);
      v14 = [(HAPBTLEControlPacket *)self shortDescription];
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control header with error: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

@end