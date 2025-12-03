@interface NRPBMigratedAwayRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBMigratedAwayRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBMigratedAwayRequest;
  v3 = [(NRPBMigratedAwayRequest *)&v7 description];
  dictionaryRepresentation = [(NRPBMigratedAwayRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  advertisedName = self->_advertisedName;
  if (advertisedName)
  {
    [v3 setObject:advertisedName forKey:@"advertisedName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_advertisedName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_advertisedName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    advertisedName = self->_advertisedName;
    if (advertisedName | equalCopy[1])
    {
      v6 = [(NSString *)advertisedName isEqual:?];
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

@end