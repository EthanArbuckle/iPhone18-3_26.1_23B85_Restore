@interface RPNearFieldAuthenticationPayload
+ (id)_authTagWithSelfIdentity:(id)identity data:(id)data;
+ (id)_signatureWithSelfIdentity:(id)identity data:(id)data;
- (BOOL)isValidTimeStamp;
- (BOOL)verifyWithIdentity:(id)identity;
- (RPNearFieldAuthenticationPayload)initWithDictionary:(id)dictionary;
- (RPNearFieldAuthenticationPayload)initWithTimeStamp:(id)stamp pkData:(id)data bonjourListenerUUID:(id)d selfIdentity:(id)identity;
- (id)dictionaryRepresentation;
@end

@implementation RPNearFieldAuthenticationPayload

- (RPNearFieldAuthenticationPayload)initWithTimeStamp:(id)stamp pkData:(id)data bonjourListenerUUID:(id)d selfIdentity:(id)identity
{
  stampCopy = stamp;
  dataCopy = data;
  dCopy = d;
  identityCopy = identity;
  v34.receiver = self;
  v34.super_class = RPNearFieldAuthenticationPayload;
  v15 = [(RPNearFieldMessagePayload *)&v34 initWithType:1];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timeStamp, stamp);
    v17 = [dataCopy copy];
    pkData = v16->_pkData;
    v16->_pkData = v17;

    objc_storeStrong(&v16->_bonjourListenerUUID, d);
    v19 = [objc_opt_class() _authTagWithSelfIdentity:identityCopy data:v16->_pkData];
    authTag = v16->_authTag;
    v16->_authTag = v19;

    v21 = v16->_authTag;
    v22 = v16->_pkData;
    v23 = v16->_timeStamp;
    v24 = v21;
    v25 = v22;
    v26 = [[NSMutableData alloc] initWithCapacity:42];
    [(NSDate *)v23 timeIntervalSinceReferenceDate];
    v28 = v27;

    v35 = v28;
    v29 = [NSData dataWithBytes:&v35 length:4];
    [v26 appendData:v24];

    [v26 appendData:v25];
    [v26 appendData:v29];

    v30 = [objc_opt_class() _signatureWithSelfIdentity:identityCopy data:v26];
    signatureData = v16->_signatureData;
    v16->_signatureData = v30;

    v32 = v16;
  }

  return v16;
}

- (RPNearFieldAuthenticationPayload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = CFDictionaryGetCFDataOfLength();
  v6 = v5;
  if (!v5)
  {
    selfCopy = 0;
    goto LABEL_21;
  }

  v7 = v5;
  if ([v7 length] != 4)
  {

    goto LABEL_12;
  }

  v8 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", *[v7 bytes]);

  if (!v8)
  {
    while (1)
    {
LABEL_12:
      [NSException raise:@"CUGuardLetNoReturn" format:@"CUGuardLet with no return"];
    }
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = CFDictionaryGetCFDataOfLength();
    if (v10)
    {
      v11 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
      CFDataGetTypeID();
      v12 = CFDictionaryGetTypedValue();
      if (v12)
      {
        CFDataGetTypeID();
        v13 = CFDictionaryGetTypedValue();
        if (v13 && (v23.receiver = self, v23.super_class = RPNearFieldAuthenticationPayload, v14 = [(RPNearFieldMessagePayload *)&v23 initWithDictionary:dictionaryCopy], (self = v14) != 0))
        {
          objc_storeStrong(&v14->_timeStamp, v8);
          v15 = [v9 copy];
          pkData = self->_pkData;
          self->_pkData = v15;

          objc_storeStrong(&self->_bonjourListenerUUID, v11);
          v17 = [v13 copy];
          authTag = self->_authTag;
          self->_authTag = v17;

          v19 = [v12 copy];
          signatureData = self->_signatureData;
          self->_signatureData = v19;

          self = self;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

LABEL_21:
  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v16[0] = 0;
  v16[1] = 0;
  [(NSUUID *)self->_bonjourListenerUUID getUUIDBytes:v16];
  v3 = [NSData dataWithBytes:v16 length:16];
  v14[0] = &off_1001B7DE0;
  [(NSDate *)self->_timeStamp timeIntervalSinceReferenceDate];
  v13 = v4;
  v5 = [NSData dataWithBytes:&v13 length:4];
  pkData = self->_pkData;
  v15[0] = v5;
  v15[1] = pkData;
  v14[1] = &off_1001B7DF8;
  v14[2] = &off_1001B7E10;
  authTag = self->_authTag;
  v15[2] = v3;
  v15[3] = authTag;
  v14[3] = &off_1001B7E40;
  v14[4] = &off_1001B7E28;
  v15[4] = self->_signatureData;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12.receiver = self;
  v12.super_class = RPNearFieldAuthenticationPayload;
  dictionaryRepresentation = [(RPNearFieldMessagePayload *)&v12 dictionaryRepresentation];
  v10 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

  [v10 addEntriesFromDictionary:v8];

  return v10;
}

- (BOOL)isValidTimeStamp
{
  v3 = +[NSDate now];
  LOBYTE(self) = [(RPNearFieldAuthenticationPayload *)self isValidTimeStampSince:v3];

  return self;
}

- (BOOL)verifyWithIdentity:(id)identity
{
  identityCopy = identity;
  edPKData = [identityCopy edPKData];
  if (edPKData)
  {
    authTag = self->_authTag;
    pkData = self->_pkData;
    v25 = 0;
    v8 = [identityCopy verifyAuthTag:authTag data:pkData type:4 error:&v25];
    v9 = v25;
    v10 = v9;
    if (v8)
    {
      v11 = self->_authTag;
      v12 = self->_pkData;
      v13 = self->_timeStamp;
      v14 = v11;
      v15 = v12;
      v16 = [[NSMutableData alloc] initWithCapacity:42];
      [(NSDate *)v13 timeIntervalSinceReferenceDate];
      v18 = v17;

      v26 = v18;
      v19 = [NSData dataWithBytes:&v26 length:4];
      [v16 appendData:v14];

      [v16 appendData:v15];
      [v16 appendData:v19];

      signatureData = self->_signatureData;
      v24 = v10;
      v21 = [identityCopy verifySignature:signatureData data:v16 error:&v24];
      v22 = v24;

      if ((v21 & 1) == 0 && dword_1001D38D8 <= 90 && (dword_1001D38D8 != -1 || _LogCategory_Initialize()))
      {
        sub_100117884();
      }
    }

    else
    {
      v21 = 0;
      v22 = v9;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)_authTagWithSelfIdentity:(id)identity data:(id)data
{
  v9 = 0;
  v4 = [identity authTagForData:data type:4 error:&v9];
  v5 = v9;
  if (v5 && dword_1001D38D8 < 91 && (dword_1001D38D8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001178C4();
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSData data];
  }

  v7 = v6;

  return v7;
}

+ (id)_signatureWithSelfIdentity:(id)identity data:(id)data
{
  v9 = 0;
  v4 = [identity signData:data error:&v9];
  v5 = v9;
  if (v5 && dword_1001D38D8 <= 90 && (dword_1001D38D8 != -1 || _LogCategory_Initialize()))
  {
    sub_100117904();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
LABEL_6:
    v6 = v4;
    goto LABEL_9;
  }

  v6 = +[NSData data];
LABEL_9:
  v7 = v6;

  return v7;
}

@end