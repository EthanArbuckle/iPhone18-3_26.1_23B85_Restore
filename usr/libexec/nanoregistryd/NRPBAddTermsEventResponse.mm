@interface NRPBAddTermsEventResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBAddTermsEventResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBAddTermsEventResponse;
  v3 = [(NRPBAddTermsEventResponse *)&v7 description];
  dictionaryRepresentation = [(NRPBAddTermsEventResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
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
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NRPBNSError *)self->_error copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | equalCopy[1])
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