@interface NRPBPairingSessionID
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NRPBPairingSessionID

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPairingSessionID;
  v3 = [(NRPBPairingSessionID *)&v7 description];
  dictionaryRepresentation = [(NRPBPairingSessionID *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  pairingSessionId = self->_pairingSessionId;
  if (pairingSessionId)
  {
    [v3 setObject:pairingSessionId forKey:@"pairingSessionId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_pairingSessionId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pairingSessionId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pairingSessionId = self->_pairingSessionId;
    if (pairingSessionId | equalCopy[1])
    {
      v6 = [(NSString *)pairingSessionId isEqual:?];
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