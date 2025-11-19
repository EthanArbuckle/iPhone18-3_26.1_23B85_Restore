@interface NRPBCheckTermsEventResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBCheckTermsEventResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBCheckTermsEventResponse;
  v3 = [(NRPBCheckTermsEventResponse *)&v7 description];
  v4 = [(NRPBCheckTermsEventResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v6 = [(NRPBNSError *)error dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    acknowledged = self->_acknowledged;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_acknowledged;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NRPBNSError *)self->_error copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
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

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  error = self->_error;
  if (error | *(v4 + 1))
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