@interface SDAutoUnlockEscrowSecretInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockEscrowSecretInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockEscrowSecretInfo;
  v3 = [(SDAutoUnlockEscrowSecretInfo *)&v7 description];
  v4 = [(SDAutoUnlockEscrowSecretInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  secret = self->_secret;
  if (secret)
  {
    [v3 setObject:secret forKey:@"secret"];
  }

  pairingID = self->_pairingID;
  if (pairingID)
  {
    [v4 setObject:pairingID forKey:@"pairingID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_secret)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_pairingID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_secret)
  {
    [v4 setSecret:?];
    v4 = v5;
  }

  if (self->_pairingID)
  {
    [v5 setPairingID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_secret copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_pairingID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((secret = self->_secret, !(secret | v4[2])) || -[NSData isEqual:](secret, "isEqual:")))
  {
    pairingID = self->_pairingID;
    if (pairingID | v4[1])
    {
      v7 = [(NSString *)pairingID isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SDAutoUnlockEscrowSecretInfo *)self setSecret:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SDAutoUnlockEscrowSecretInfo *)self setPairingID:?];
    v4 = v5;
  }
}

@end