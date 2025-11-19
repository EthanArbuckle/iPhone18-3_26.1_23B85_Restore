@interface NRPBAddTermsEventResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NRPBAddTermsEventResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBAddTermsEventResponse;
  v3 = [(NRPBAddTermsEventResponse *)&v7 description];
  v4 = [(NRPBAddTermsEventResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  error = self->_error;
  if (error)
  {
    v5 = [(NRPBNSError *)error dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NRPBNSError *)self->_error copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | v4[1])
    {
      v6 = [(NRPBNSError *)error isEqual:?];
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