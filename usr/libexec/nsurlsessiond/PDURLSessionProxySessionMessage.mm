@interface PDURLSessionProxySessionMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSequenceNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxySessionMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PDURLSessionProxySessionMessage *)self setSessionIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(PDURLSessionProxySessionMessage *)self setUuidString:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_sequenceNumber = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if (v5)
  {
    self->_idsPriority = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PDURLSessionProxySessionMessage *)self setLaunchUUID:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionIdentifier hash];
  v4 = [(NSString *)self->_uuidString hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_sequenceNumber;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_launchUUID hash];
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_idsPriority;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_launchUUID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 5))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_sequenceNumber != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_idsPriority != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_18;
  }

  launchUUID = self->_launchUUID;
  if (launchUUID | *(equalCopy + 3))
  {
    v9 = [(NSString *)launchUUID isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_uuidString copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = self->_sequenceNumber;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_idsPriority;
    *(v5 + 48) |= 1u;
  }

  v11 = [(NSString *)self->_launchUUID copyWithZone:zone];
  v12 = v5[3];
  v5[3] = v11;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sessionIdentifier)
  {
    [toCopy setSessionIdentifier:?];
    toCopy = v6;
  }

  if (self->_uuidString)
  {
    [v6 setUuidString:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_sequenceNumber;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_idsPriority;
    *(toCopy + 48) |= 1u;
  }

  if (self->_launchUUID)
  {
    [v6 setLaunchUUID:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    idsPriority = self->_idsPriority;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_launchUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v3 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  uuidString = self->_uuidString;
  if (uuidString)
  {
    [v4 setObject:uuidString forKey:@"uuidString"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_sequenceNumber];
    [v4 setObject:v8 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithLongLong:self->_idsPriority];
    [v4 setObject:v9 forKey:@"idsPriority"];
  }

  launchUUID = self->_launchUUID;
  if (launchUUID)
  {
    [v4 setObject:launchUUID forKey:@"launchUUID"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxySessionMessage;
  v3 = [(PDURLSessionProxySessionMessage *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxySessionMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasSequenceNumber:(BOOL)number
{
  if (number)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end