@interface NRPBMigratedAwayRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NRPBMigratedAwayRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBMigratedAwayRequest;
  v3 = [(NRPBMigratedAwayRequest *)&v7 description];
  v4 = [(NRPBMigratedAwayRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_advertisedName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_advertisedName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    advertisedName = self->_advertisedName;
    if (advertisedName | v4[1])
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