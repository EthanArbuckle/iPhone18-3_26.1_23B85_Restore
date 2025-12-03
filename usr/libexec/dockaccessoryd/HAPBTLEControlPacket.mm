@interface HAPBTLEControlPacket
+ (id)packetWithSerializedData:(id)data error:(id *)error;
+ (id)shortDescription;
- (HAPBTLEControlPacket)init;
- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier continuationPacket:(BOOL)packet packetPayload:(id)payload maximumLength:(unint64_t)length;
- (id)descriptionWithPointer:(BOOL)pointer;
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

+ (id)packetWithSerializedData:(id)data error:(id *)error
{
  dataCopy = data;
  if (![dataCopy length])
  {
    v6 = @"The control field length is invalid.";
    goto LABEL_7;
  }

  buf[0] = 0;
  [dataCopy getBytes:buf range:{0, 1}];
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
    if ([dataCopy length] <= 1)
    {
      v7 = [NSError hapErrorWithcode:9 description:@"Failed to parse control field." reason:@"The control field length is invalid for a continuation payload." suggestion:0 underlyingError:0];
      v24 = v7;
      goto LABEL_9;
    }

    v25 = 0;
    v10 = 1;
    [dataCopy getBytes:&v25 range:{1, 1}];
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
    v15 = [dataCopy subdataWithRange:{v12, objc_msgSend(dataCopy, "length") - v12}];
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

    if (error)
    {
      v20 = v13;
      v16 = 0;
      *error = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier continuationPacket:(BOOL)packet packetPayload:(id)payload maximumLength:(unint64_t)length
{
  packetCopy = packet;
  identifierCopy = identifier;
  payloadCopy = payload;
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

  v15->_type = type;
  objc_storeStrong(&v15->_transactionIdentifier, identifier);
  v16->_continuationPacket = packetCopy;
  if (packetCopy)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = length >= v17;
  v19 = (length - v17);
  if (v18)
  {
    if ([payloadCopy length] < v19)
    {
      v19 = [payloadCopy length];
    }

    v24 = [payloadCopy subdataWithRange:{0, v19}];
    payload = v16->_payload;
    v16->_payload = v24;

    goto LABEL_12;
  }

  v20 = sub_10007FAA0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = sub_10007FAFC(0);
    shortDescription = [(HAPBTLEControlPacket *)v16 shortDescription];
    *buf = 138543874;
    v29 = v21;
    v30 = 2112;
    v31 = shortDescription;
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

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  shortDescription = [(HAPBTLEControlPacket *)self shortDescription];
  if (pointerCopy)
  {
    v6 = [NSString stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_10027BDA0;
  }

  type = [(HAPBTLEControlPacket *)self type];
  v8 = @"unknown";
  if (type == 1)
  {
    v8 = @"response";
  }

  if (!type)
  {
    v8 = @"request";
  }

  v9 = v8;
  transactionIdentifier = [(HAPBTLEControlPacket *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  payload = [(HAPBTLEControlPacket *)self payload];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Payload Length = %tu>", shortDescription, v6, v9, unsignedCharValue, [payload length]);

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)serialize
{
  type = [(HAPBTLEControlPacket *)self type];
  transactionIdentifier = [(HAPBTLEControlPacket *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  isContinuationPacket = [(HAPBTLEControlPacket *)self isContinuationPacket];
  buf[0] = unsignedCharValue;
  v7 = [NSMutableData dataWithCapacity:2];
  v8 = v7;
  v9 = 2 * type;
  if (isContinuationPacket)
  {
    v9 = (2 * type) | 0x80;
  }

  v16 = v9;
  [v7 appendBytes:&v16 length:1];
  if (isContinuationPacket)
  {
    [v8 appendBytes:buf length:1];
  }

  if (v8)
  {
    v10 = [v8 mutableCopy];
    payload = [(HAPBTLEControlPacket *)self payload];
    [v10 appendData:payload];

    v12 = [v10 copy];
  }

  else
  {
    v10 = sub_10007FAA0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10007FAFC(0);
      shortDescription = [(HAPBTLEControlPacket *)self shortDescription];
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = shortDescription;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control header with error: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

@end