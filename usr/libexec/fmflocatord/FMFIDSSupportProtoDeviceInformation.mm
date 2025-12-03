@interface FMFIDSSupportProtoDeviceInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FMFIDSSupportProtoDeviceInformation

- (id)description
{
  v7.receiver = self;
  v7.super_class = FMFIDSSupportProtoDeviceInformation;
  v3 = [(FMFIDSSupportProtoDeviceInformation *)&v7 description];
  dictionaryRepresentation = [(FMFIDSSupportProtoDeviceInformation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_udid)
  {
    sub_100038F70();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_udid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    udid = self->_udid;
    if (udid | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(FMFIDSSupportProtoDeviceInformation *)self setUdid:?];
  }
}

@end