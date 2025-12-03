@interface PDURLSessionProxyTaskMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyTaskMessage

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  session = self->_session;
  v6 = fromCopy[2];
  if (session)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PDURLSessionProxySessionMessage *)session mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PDURLSessionProxyTaskMessage *)self setSession:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    self->_taskIdentifier = fromCopy[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxySessionMessage *)self->_session hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_taskIdentifier;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  session = self->_session;
  if (session | *(equalCopy + 2))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_taskIdentifier == *(equalCopy + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_taskIdentifier;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_session)
  {
    v5 = toCopy;
    [toCopy setSession:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_taskIdentifier;
    *(toCopy + 24) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    taskIdentifier = self->_taskIdentifier;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    dictionaryRepresentation = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"session"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_taskIdentifier];
    [v3 setObject:v6 forKey:@"taskIdentifier"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyTaskMessage;
  v3 = [(PDURLSessionProxyTaskMessage *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyTaskMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end