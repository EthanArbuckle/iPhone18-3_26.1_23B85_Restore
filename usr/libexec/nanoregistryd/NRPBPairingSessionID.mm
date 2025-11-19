@interface NRPBPairingSessionID
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NRPBPairingSessionID

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPairingSessionID;
  v3 = [(NRPBPairingSessionID *)&v7 description];
  v4 = [(NRPBPairingSessionID *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_pairingSessionId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_pairingSessionId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    pairingSessionId = self->_pairingSessionId;
    if (pairingSessionId | v4[1])
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