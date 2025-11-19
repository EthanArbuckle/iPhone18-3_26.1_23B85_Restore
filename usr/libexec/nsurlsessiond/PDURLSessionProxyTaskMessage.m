@interface PDURLSessionProxyTaskMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyTaskMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  session = self->_session;
  v6 = v4[2];
  if (session)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PDURLSessionProxySessionMessage *)session mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PDURLSessionProxyTaskMessage *)self setSession:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    self->_taskIdentifier = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  session = self->_session;
  if (session | *(v4 + 2))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_taskIdentifier == *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = self->_taskIdentifier;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_session)
  {
    v5 = v4;
    [v4 setSession:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_taskIdentifier;
    *(v4 + 24) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    taskIdentifier = self->_taskIdentifier;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    v5 = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"session"];
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
  v4 = [(PDURLSessionProxyTaskMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end