@interface NRPBMigrationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBMigrationRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBMigrationRequest;
  v3 = [(NRPBMigrationRequest *)&v7 description];
  dictionaryRepresentation = [(NRPBMigrationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_shouldCancel];
    [v3 setObject:v4 forKey:@"shouldCancel"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    shouldCancel = self->_shouldCancel;
    PBDataWriterWriteBOOLField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 8) = self->_shouldCancel;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
LABEL_4:
      v5 = 0;
      goto LABEL_5;
    }

    if (self->_shouldCancel)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_4;
    }

    v5 = 1;
  }

LABEL_5:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_shouldCancel;
  }

  else
  {
    return 0;
  }
}

@end