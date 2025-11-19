@interface PDURLSessionProxySessionMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSequenceNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxySessionMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(PDURLSessionProxySessionMessage *)self setSessionIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(PDURLSessionProxySessionMessage *)self setUuidString:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_sequenceNumber = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
  }

  if (v5)
  {
    self->_idsPriority = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PDURLSessionProxySessionMessage *)self setLaunchUUID:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(v4 + 4))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  uuidString = self->_uuidString;
  if (uuidString | *(v4 + 5))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_sequenceNumber != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_idsPriority != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_18;
  }

  launchUUID = self->_launchUUID;
  if (launchUUID | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_uuidString copyWithZone:a3];
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

  v11 = [(NSString *)self->_launchUUID copyWithZone:a3];
  v12 = v5[3];
  v5[3] = v11;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sessionIdentifier)
  {
    [v4 setSessionIdentifier:?];
    v4 = v6;
  }

  if (self->_uuidString)
  {
    [v6 setUuidString:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_sequenceNumber;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_idsPriority;
    *(v4 + 48) |= 1u;
  }

  if (self->_launchUUID)
  {
    [v6 setLaunchUUID:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    idsPriority = self->_idsPriority;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }

  if (self->_launchUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
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
  v4 = [(PDURLSessionProxySessionMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasSequenceNumber:(BOOL)a3
{
  if (a3)
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