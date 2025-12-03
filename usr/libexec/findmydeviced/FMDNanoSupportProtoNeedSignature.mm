@interface FMDNanoSupportProtoNeedSignature
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FMDNanoSupportProtoNeedSignature

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoNeedSignature;
  v3 = [(FMDNanoSupportProtoNeedSignature *)&v7 description];
  dictionaryRepresentation = [(FMDNanoSupportProtoNeedSignature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  dsid = self->_dsid;
  if (dsid)
  {
    [v3 setObject:dsid forKey:@"dsid"];
  }

  udid = self->_udid;
  if (udid)
  {
    [v4 setObject:udid forKey:@"udid"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serial_number"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"product_type"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_dsid)
  {
    sub_100230384();
  }

  PBDataWriterWriteStringField();
  if (!self->_udid)
  {
    sub_100230358();
  }

  PBDataWriterWriteStringField();
  if (!self->_serialNumber)
  {
    sub_10023032C();
  }

  PBDataWriterWriteStringField();
  if (!self->_productType)
  {
    sub_100230300();
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  dsid = self->_dsid;
  toCopy = to;
  [toCopy setDsid:dsid];
  [toCopy setUdid:self->_udid];
  [toCopy setSerialNumber:self->_serialNumber];
  [toCopy setProductType:self->_productType];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_dsid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_udid copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_productType copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((dsid = self->_dsid, !(dsid | equalCopy[1])) || -[NSString isEqual:](dsid, "isEqual:")) && ((udid = self->_udid, !(udid | equalCopy[4])) || -[NSString isEqual:](udid, "isEqual:")) && ((serialNumber = self->_serialNumber, !(serialNumber | equalCopy[3])) || -[NSString isEqual:](serialNumber, "isEqual:")))
  {
    productType = self->_productType;
    if (productType | equalCopy[2])
    {
      v9 = [(NSString *)productType isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dsid hash];
  v4 = [(NSString *)self->_udid hash]^ v3;
  v5 = [(NSString *)self->_serialNumber hash];
  return v4 ^ v5 ^ [(NSString *)self->_productType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setDsid:?];
  }

  if (fromCopy[4])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setUdid:?];
  }

  if (fromCopy[3])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setSerialNumber:?];
  }

  if (fromCopy[2])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setProductType:?];
  }
}

@end