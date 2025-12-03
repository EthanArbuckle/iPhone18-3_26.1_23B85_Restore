@interface FMDNanoSupportProtoSignedData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FMDNanoSupportProtoSignedData

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoSignedData;
  v3 = [(FMDNanoSupportProtoSignedData *)&v7 description];
  dictionaryRepresentation = [(FMDNanoSupportProtoSignedData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_errorOccurred];
  [v3 setObject:v4 forKey:@"error_occurred"];

  signedData = self->_signedData;
  if (signedData)
  {
    [v3 setObject:signedData forKey:@"signed_data"];
  }

  udid = self->_udid;
  if (udid)
  {
    [v3 setObject:udid forKey:@"udid"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v3 setObject:serialNumber forKey:@"serial_number"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v3 setObject:productType forKey:@"product_type"];
  }

  timeStampMillis = self->_timeStampMillis;
  if (timeStampMillis)
  {
    [v3 setObject:timeStampMillis forKey:@"time_stamp_millis"];
  }

  imei = self->_imei;
  if (imei)
  {
    [v3 setObject:imei forKey:@"imei"];
  }

  meid = self->_meid;
  if (meid)
  {
    [v3 setObject:meid forKey:@"meid"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorOccurred = self->_errorOccurred;
  v7 = toCopy;
  PBDataWriterWriteBOOLField();
  if (self->_signedData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_udid)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_timeStampMillis)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_imei)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }

  if (self->_meid)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[64] = self->_errorOccurred;
  v5 = toCopy;
  if (self->_signedData)
  {
    [toCopy setSignedData:?];
    toCopy = v5;
  }

  if (self->_udid)
  {
    [v5 setUdid:?];
    toCopy = v5;
  }

  if (self->_serialNumber)
  {
    [v5 setSerialNumber:?];
    toCopy = v5;
  }

  if (self->_productType)
  {
    [v5 setProductType:?];
    toCopy = v5;
  }

  if (self->_timeStampMillis)
  {
    [v5 setTimeStampMillis:?];
    toCopy = v5;
  }

  if (self->_imei)
  {
    [v5 setImei:?];
    toCopy = v5;
  }

  if (self->_meid)
  {
    [v5 setMeid:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[64] = self->_errorOccurred;
  v6 = [(NSData *)self->_signedData copyWithZone:zone];
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;

  v8 = [(NSString *)self->_udid copyWithZone:zone];
  v9 = *(v5 + 7);
  *(v5 + 7) = v8;

  v10 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  v12 = [(NSString *)self->_productType copyWithZone:zone];
  v13 = *(v5 + 3);
  *(v5 + 3) = v12;

  v14 = [(NSString *)self->_timeStampMillis copyWithZone:zone];
  v15 = *(v5 + 6);
  *(v5 + 6) = v14;

  v16 = [(NSString *)self->_imei copyWithZone:zone];
  v17 = *(v5 + 1);
  *(v5 + 1) = v16;

  v18 = [(NSString *)self->_meid copyWithZone:zone];
  v19 = *(v5 + 2);
  *(v5 + 2) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 64);
  if (self->_errorOccurred)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  signedData = self->_signedData;
  if (signedData | *(equalCopy + 5) && ![(NSData *)signedData isEqual:?])
  {
    goto LABEL_20;
  }

  udid = self->_udid;
  if (udid | *(equalCopy + 7))
  {
    if (![(NSString *)udid isEqual:?])
    {
      goto LABEL_20;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 4))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_20;
    }
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 3))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  timeStampMillis = self->_timeStampMillis;
  if (timeStampMillis | *(equalCopy + 6))
  {
    if (![(NSString *)timeStampMillis isEqual:?])
    {
      goto LABEL_20;
    }
  }

  imei = self->_imei;
  if (imei | *(equalCopy + 1))
  {
    if (![(NSString *)imei isEqual:?])
    {
      goto LABEL_20;
    }
  }

  meid = self->_meid;
  if (meid | *(equalCopy + 2))
  {
    v13 = [(NSString *)meid isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_21:

  return v13;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_errorOccurred;
  v4 = [(NSData *)self->_signedData hash];
  v5 = v4 ^ [(NSString *)self->_udid hash];
  v6 = v5 ^ [(NSString *)self->_serialNumber hash];
  v7 = v6 ^ [(NSString *)self->_productType hash]^ v3;
  v8 = [(NSString *)self->_timeStampMillis hash];
  v9 = v8 ^ [(NSString *)self->_imei hash];
  return v7 ^ v9 ^ [(NSString *)self->_meid hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_errorOccurred = fromCopy[64];
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(FMDNanoSupportProtoSignedData *)self setSignedData:?];
  }

  if (v5[7])
  {
    [(FMDNanoSupportProtoSignedData *)self setUdid:?];
  }

  if (v5[4])
  {
    [(FMDNanoSupportProtoSignedData *)self setSerialNumber:?];
  }

  if (v5[3])
  {
    [(FMDNanoSupportProtoSignedData *)self setProductType:?];
  }

  if (v5[6])
  {
    [(FMDNanoSupportProtoSignedData *)self setTimeStampMillis:?];
  }

  if (v5[1])
  {
    [(FMDNanoSupportProtoSignedData *)self setImei:?];
  }

  if (v5[2])
  {
    [(FMDNanoSupportProtoSignedData *)self setMeid:?];
  }
}

@end