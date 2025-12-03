@interface SDAuthenticationPairingCreateSecret
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationPairingCreateSecret

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationPairingCreateSecret;
  v3 = [(SDAuthenticationPairingCreateSecret *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationPairingCreateSecret *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v5;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_token copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 1) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_11;
  }

  token = self->_token;
  if (token | *(equalCopy + 2))
  {
    v8 = [(NSData *)token isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sessionID hash]^ v3;
  return v4 ^ [(NSData *)self->_token hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_version = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SDAuthenticationPairingCreateSecret *)self setSessionID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SDAuthenticationPairingCreateSecret *)self setToken:?];
    fromCopy = v5;
  }
}

@end