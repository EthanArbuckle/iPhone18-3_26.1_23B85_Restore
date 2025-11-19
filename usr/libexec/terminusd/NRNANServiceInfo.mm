@interface NRNANServiceInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRNANServiceInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceName hash];
  v4 = [(NSData *)self->_authTag hash]^ v3;
  v5 = [(NSData *)self->_advertisingNonce hash];
  return v4 ^ v5 ^ [(NSData *)self->_deviceTypeHash hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((serviceName = self->_serviceName, !(serviceName | v4[4])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((authTag = self->_authTag, !(authTag | v4[2])) || -[NSData isEqual:](authTag, "isEqual:")) && ((advertisingNonce = self->_advertisingNonce, !(advertisingNonce | v4[1])) || -[NSData isEqual:](advertisingNonce, "isEqual:")))
  {
    deviceTypeHash = self->_deviceTypeHash;
    if (deviceTypeHash | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_serviceName copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_authTag copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_advertisingNonce copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_deviceTypeHash copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_authTag)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_advertisingNonce)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_deviceTypeHash)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v21 = 0;
        v14 = [a3 position] + 1;
        if (v14 >= [a3 position] && (v15 = objc_msgSend(a3, "position") + 1, v15 <= objc_msgSend(a3, "length")))
        {
          v16 = [a3 data];
          [v16 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v18 = [a3 hasError] ? 0 : v13;
LABEL_19:
      if (([a3 hasError] & 1) != 0 || (v18 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
      v10 = [a3 position];
    }

    while (v10 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
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
  v4 = [(NRNANServiceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end