@interface NRNANServiceInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRNANServiceInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceName hash];
  v4 = [(NSData *)self->_authTag hash]^ v3;
  v5 = [(NSData *)self->_advertisingNonce hash];
  return v4 ^ v5 ^ [(NSData *)self->_deviceTypeHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((serviceName = self->_serviceName, !(serviceName | equalCopy[4])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((authTag = self->_authTag, !(authTag | equalCopy[2])) || -[NSData isEqual:](authTag, "isEqual:")) && ((advertisingNonce = self->_advertisingNonce, !(advertisingNonce | equalCopy[1])) || -[NSData isEqual:](advertisingNonce, "isEqual:")))
  {
    deviceTypeHash = self->_deviceTypeHash;
    if (deviceTypeHash | equalCopy[3])
    {
      v9 = [(NSData *)deviceTypeHash isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_serviceName copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_authTag copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_advertisingNonce copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_deviceTypeHash copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_authTag)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_advertisingNonce)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_deviceTypeHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v21 = 0;
        v14 = [from position] + 1;
        if (v14 >= [from position] && (v15 = objc_msgSend(from, "position") + 1, v15 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v13 |= (v21 & 0x7F) << v11;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v11 += 7;
        if (v12++ >= 9)
        {
          v18 = 0;
          goto LABEL_19;
        }
      }

      v18 = [from hasError] ? 0 : v13;
LABEL_19:
      if (([from hasError] & 1) != 0 || (v18 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v19 = v18 >> 3;
      if ((v18 >> 3) > 2)
      {
        if (v19 == 3)
        {
          v6 = PBReaderReadData();
          v7 = &OBJC_IVAR___NRNANServiceInfo__advertisingNonce;
          goto LABEL_4;
        }

        if (v19 == 4)
        {
          v6 = PBReaderReadData();
          v7 = &OBJC_IVAR___NRNANServiceInfo__deviceTypeHash;
          goto LABEL_4;
        }
      }

      else
      {
        if (v19 == 1)
        {
          v6 = PBReaderReadString();
          v7 = &OBJC_IVAR___NRNANServiceInfo__serviceName;
LABEL_4:
          v8 = *v7;
          v9 = *&self->PBCodable_opaque[v8];
          *&self->PBCodable_opaque[v8] = v6;

          goto LABEL_5;
        }

        if (v19 == 2)
        {
          v6 = PBReaderReadData();
          v7 = &OBJC_IVAR___NRNANServiceInfo__authTag;
          goto LABEL_4;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  authTag = self->_authTag;
  if (authTag)
  {
    [v4 setObject:authTag forKey:@"authTag"];
  }

  advertisingNonce = self->_advertisingNonce;
  if (advertisingNonce)
  {
    [v4 setObject:advertisingNonce forKey:@"advertisingNonce"];
  }

  deviceTypeHash = self->_deviceTypeHash;
  if (deviceTypeHash)
  {
    [v4 setObject:deviceTypeHash forKey:@"deviceTypeHash"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRNANServiceInfo;
  v3 = [(NRNANServiceInfo *)&v7 description];
  dictionaryRepresentation = [(NRNANServiceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end