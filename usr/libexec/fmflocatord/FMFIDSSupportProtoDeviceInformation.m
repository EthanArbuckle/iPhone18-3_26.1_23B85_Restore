@interface FMFIDSSupportProtoDeviceInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FMFIDSSupportProtoDeviceInformation

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMFIDSSupportProtoDeviceInformation;
  v3 = [(FMFIDSSupportProtoDeviceInformation *)&v7 description];
  v4 = [(FMFIDSSupportProtoDeviceInformation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  udid = self->_udid;
  if (udid)
  {
    [v3 setObject:udid forKey:@"udid"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_udid)
  {
    sub_100038F70();
  }

  v5 = v4;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_udid copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    udid = self->_udid;
    if (udid | v4[1])
    {
      v6 = [(NSString *)udid isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(FMFIDSSupportProtoDeviceInformation *)self setUdid:?];
  }
}

@end