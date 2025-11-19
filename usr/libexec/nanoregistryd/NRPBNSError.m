@interface NRPBNSError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBNSError

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBNSError;
  v3 = [(NRPBNSError *)&v7 description];
  v4 = [(NRPBNSError *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithLongLong:self->_code];
    [v3 setObject:v4 forKey:@"code"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_code;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_domain copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_code != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  domain = self->_domain;
  if (domain | *(v4 + 2))
  {
    v7 = [(NSString *)domain isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_code;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_domain hash]^ v2;
}

@end