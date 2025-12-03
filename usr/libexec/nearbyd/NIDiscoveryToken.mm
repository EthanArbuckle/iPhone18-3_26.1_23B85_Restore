@interface NIDiscoveryToken
+ (id)_identifyingSequenceFromBytes:(id)bytes;
+ (id)deserialize:(id)deserialize;
+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)identifier;
+ (id)generateFindingTokenWithIRK:(id)k;
+ (id)generateTokenWithUUID:(id)d;
+ (id)serialize:(id)serialize;
- (BOOL)isEqual:(id)equal;
- (NIDiscoveryToken)initWithBytes:(id)bytes;
- (NIDiscoveryToken)initWithCoder:(id)coder;
- (NIDiscoveryToken)initWithDeviceAddress:(unsigned __int16)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceCapabilities;
- (id)getIRK;
- (id)getSessionIdentifier;
- (id)objectInRawTokenOPACKDictForKey:(id)key;
- (int64_t)tokenVariant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIDiscoveryToken

- (NIDiscoveryToken)initWithBytes:(id)bytes
{
  bytesCopy = bytes;
  if (!bytesCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"bytes"}];
  }

  v13.receiver = self;
  v13.super_class = NIDiscoveryToken;
  v7 = [(NIDiscoveryToken *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rawToken, bytes);
    v9 = [NIDiscoveryToken _identifyingSequenceFromBytes:bytesCopy];
    identifyingSequence = v8->_identifyingSequence;
    v8->_identifyingSequence = v9;
  }

  return v8;
}

+ (id)_identifyingSequenceFromBytes:(id)bytes
{
  bytesCopy = bytes;
  v4 = bytesCopy;
  if (!bytesCopy)
  {
    __assert_rtn("+[NIDiscoveryToken _identifyingSequenceFromBytes:]", "NIConfiguration.mm", 71, "bytes");
  }

  v5 = [bytesCopy copy];
  v6 = OPACKDecodeData();
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_1001EF714;
    v18 = sub_1001EF724;
    v19 = objc_opt_new();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001EF72C;
    v11[3] = &unk_10099D9A0;
    v12 = v6;
    v13 = &v14;
    [&off_1009C3C08 enumerateObjectsUsingBlock:v11];
    v7 = [v15[5] length];
    v8 = v5;
    if (v7)
    {
      v8 = v15[5];
    }

    v9 = v8;

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)objectInRawTokenOPACKDictForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  rawToken = self->_rawToken;
  v7 = OPACKDecodeData();
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKey:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)tokenVariant
{
  v2 = [(NIDiscoveryToken *)self objectInRawTokenOPACKDictForKey:&off_1009C3F38];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v2 integerValue] <= 3)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)deviceCapabilities
{
  v2 = [(NIDiscoveryToken *)self objectInRawTokenOPACKDictForKey:&off_1009C3F50];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = -[NIDeviceCapabilities initWithBitmap:]([NIDeviceCapabilities alloc], "initWithBitmap:", [v2 unsignedCharValue]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getIRK
{
  rawToken = [(NIDiscoveryToken *)self rawToken];
  v3 = OPACKDecodeData();

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:&off_1009C3EC0];
    v5 = v4;
    if (v4 && [v4 length] == 16)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getSessionIdentifier
{
  rawToken = [(NIDiscoveryToken *)self rawToken];
  v3 = OPACKDecodeData();

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:&off_1009C3EA8];
    v5 = v4;
    if (v4 && [v4 length] == 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)serialize:(id)serialize
{
  serializeCopy = serialize;
  if ([serializeCopy count] <= 0x3E8)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1001EF714;
    v11 = sub_1001EF724;
    v12 = objc_opt_new();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001EFD68;
    v6[3] = &unk_10099D9C8;
    v6[4] = &v7;
    [serializeCopy enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)deserialize:(id)deserialize
{
  deserializeCopy = deserialize;
  if ([deserializeCopy length] <= 0xF4240)
  {
    v4 = objc_opt_new();
    v5 = 0;
    do
    {
      if (v5 >= [deserializeCopy length])
      {
        break;
      }

      bytes = [deserializeCopy bytes];
      v7 = bytes[v5];
      v8 = v5 + 1;
      if (bytes[v5])
      {
        if (v5 + v7 >= [deserializeCopy length])
        {
          break;
        }

        v9 = [deserializeCopy subdataWithRange:{v5 + 1, v7}];
        v10 = [[NIDiscoveryToken alloc] initWithBytes:v9];
        [v4 addObject:v10];
        v8 += v7;
      }

      v5 = v8;
    }

    while (v8 < 0xF4240);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NIDiscoveryToken)initWithDeviceAddress:(unsigned __int16)address
{
  addressCopy = address;
  v4 = [NSData dataWithBytes:&addressCopy length:2];
  v5 = [[NIDiscoveryToken alloc] initWithBytes:v4];

  if (v5)
  {
    v6 = [NSNumber numberWithUnsignedShort:addressCopy];
    shortDeviceAddress = v5->_shortDeviceAddress;
    v5->_shortDeviceAddress = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  shortDeviceAddress = self->_shortDeviceAddress;
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = v5;
  if (shortDeviceAddress)
  {
    intValue = [(NSNumber *)self->_shortDeviceAddress intValue];

    return [v6 initWithDeviceAddress:intValue];
  }

  else
  {
    rawToken = self->_rawToken;

    return [v5 initWithBytes:rawToken];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_rawToken forKey:@"rawToken"];
  [coderCopy encodeObject:self->_shortDeviceAddress forKey:@"shortDeviceAddress"];
}

- (NIDiscoveryToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawToken"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortDeviceAddress"];
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          selfCopy = 0;
          goto LABEL_10;
        }

        v7 = -[NIDiscoveryToken initWithDeviceAddress:](self, "initWithDeviceAddress:", [v6 intValue]);
      }

      else
      {
        v7 = [(NIDiscoveryToken *)self initWithBytes:v5];
      }

      self = v7;
      selfCopy = self;
LABEL_10:

      goto LABEL_11;
    }
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (equalCopy == self)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NSData *)self->_identifyingSequence isEqualToData:equalCopy->_identifyingSequence];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIDiscoveryToken *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

+ (id)generateTokenWithUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];

  v13 = &off_1009C3FF8;
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIItemLocalizerSupport.mm" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v10 = [[NIDiscoveryToken alloc] initWithBytes:Data];

  return v10;
}

+ (id)generateFindingTokenWithIRK:(id)k
{
  kCopy = k;
  if (!kCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIFindingSupport.mm" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"IRK"}];
  }

  if ([kCopy length] != 16)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIFindingSupport.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"IRK.length == NIDiscoveryTokenIRKLengthBytes"}];
  }

  v14[0] = &off_1009C4298;
  v14[1] = &off_1009C42C8;
  v15[0] = &off_1009C42B0;
  v15[1] = kCopy;
  v14[2] = &off_1009C42E0;
  v6 = [NSData dataWithBytes:&unk_10056E218 length:3];
  v15[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"NIFindingSupport.mm" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v9 = [[NIDiscoveryToken alloc] initWithBytes:Data];

  return v9;
}

+ (id)generateDiscoveryTokenFromBeaconIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIFindingSupport.mm" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"beaconIdentifier"}];
  }

  uUIDString = [identifierCopy UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];

  v14[0] = &off_1009C4298;
  v14[1] = &off_1009C4310;
  v15[0] = &off_1009C42F8;
  v15[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  Data = OPACKEncoderCreateData();
  if (!Data)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"NIFindingSupport.mm" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"tokenData"}];
  }

  v10 = [[NIDiscoveryToken alloc] initWithBytes:Data];

  return v10;
}

@end