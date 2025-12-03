@interface SDAutoUnlockEscrowSecretInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockEscrowSecretInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockEscrowSecretInfo;
  v3 = [(SDAutoUnlockEscrowSecretInfo *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockEscrowSecretInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_secret)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_pairingID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_secret)
  {
    [toCopy setSecret:?];
    toCopy = v5;
  }

  if (self->_pairingID)
  {
    [v5 setPairingID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_secret copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_pairingID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((secret = self->_secret, !(secret | equalCopy[2])) || -[NSData isEqual:](secret, "isEqual:")))
  {
    pairingID = self->_pairingID;
    if (pairingID | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(SDAutoUnlockEscrowSecretInfo *)self setSecret:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SDAutoUnlockEscrowSecretInfo *)self setPairingID:?];
    fromCopy = v5;
  }
}

@end