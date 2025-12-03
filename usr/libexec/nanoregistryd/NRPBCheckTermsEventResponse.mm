@interface NRPBCheckTermsEventResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBCheckTermsEventResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBCheckTermsEventResponse;
  v3 = [(NRPBCheckTermsEventResponse *)&v7 description];
  dictionaryRepresentation = [(NRPBCheckTermsEventResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_acknowledged];
    [v3 setObject:v4 forKey:@"acknowledged"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation = [(NRPBNSError *)error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    acknowledged = self->_acknowledged;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_acknowledged;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NRPBNSError *)self->_error copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(equalCopy + 16);
  if (!self->_acknowledged)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    v7 = [(NRPBNSError *)error isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_acknowledged;
  }

  else
  {
    v2 = 0;
  }

  return [(NRPBNSError *)self->_error hash]^ v2;
}

@end