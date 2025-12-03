@interface SDAuthenticationPreRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationPreRequest

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationPreRequest;
  v3 = [(SDAuthenticationPreRequest *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationPreRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo)
  {
    [v3 setObject:awdlInfo forKey:@"awdlInfo"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[7] = self->_version;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[6] = self->_type;
    *(toCopy + 32) |= 1u;
  }

  v6 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v6;
  }

  if (self->_awdlInfo)
  {
    [v6 setAwdlInfo:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 7) = self->_version;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 6) = self->_type;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSData *)self->_awdlInfo copyWithZone:zone];
  v11 = v6[1];
  v6[1] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_version != *(equalCopy + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_16;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 2) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_16;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(equalCopy + 1))
  {
    v8 = [(NSData *)awdlInfo isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_type;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_sessionID hash];
  return v5 ^ [(NSData *)self->_awdlInfo hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_version = *(fromCopy + 7);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_type = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SDAuthenticationPreRequest *)self setSessionID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(SDAuthenticationPreRequest *)self setAwdlInfo:?];
    fromCopy = v6;
  }
}

@end