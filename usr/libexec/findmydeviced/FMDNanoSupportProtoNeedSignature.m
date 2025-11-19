@interface FMDNanoSupportProtoNeedSignature
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMDNanoSupportProtoNeedSignature

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMDNanoSupportProtoNeedSignature;
  v3 = [(FMDNanoSupportProtoNeedSignature *)&v7 description];
  v4 = [(FMDNanoSupportProtoNeedSignature *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  dsid = self->_dsid;
  v5 = a3;
  [v5 setDsid:dsid];
  [v5 setUdid:self->_udid];
  [v5 setSerialNumber:self->_serialNumber];
  [v5 setProductType:self->_productType];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_dsid copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_udid copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_productType copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((dsid = self->_dsid, !(dsid | v4[1])) || -[NSString isEqual:](dsid, "isEqual:")) && ((udid = self->_udid, !(udid | v4[4])) || -[NSString isEqual:](udid, "isEqual:")) && ((serialNumber = self->_serialNumber, !(serialNumber | v4[3])) || -[NSString isEqual:](serialNumber, "isEqual:")))
  {
    productType = self->_productType;
    if (productType | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setDsid:?];
  }

  if (v4[4])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setUdid:?];
  }

  if (v4[3])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setSerialNumber:?];
  }

  if (v4[2])
  {
    [(FMDNanoSupportProtoNeedSignature *)self setProductType:?];
  }
}

@end