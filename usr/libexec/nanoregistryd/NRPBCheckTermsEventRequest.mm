@interface NRPBCheckTermsEventRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBCheckTermsEventRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBCheckTermsEventRequest;
  v3 = [(NRPBCheckTermsEventRequest *)&v7 description];
  dictionaryRepresentation = [(NRPBCheckTermsEventRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  event = self->_event;
  if (event)
  {
    dictionaryRepresentation = [(NRPBTermsEvent *)event dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"event"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NRPBTermsEvent *)self->_event copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    event = self->_event;
    if (event | equalCopy[1])
    {
      v6 = [(NRPBTermsEvent *)event isEqual:?];
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