@interface SDAuthenticationRelockRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationRelockRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationRelockRequest;
  v3 = [(SDAuthenticationRelockRequest *)&v7 description];
  v4 = [(SDAuthenticationRelockRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_version;
    *(v4 + 20) |= 1u;
  }

  if (self->_sessionID)
  {
    v5 = v4;
    [v4 setSessionID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_version;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 1))
  {
    v7 = [(NSString *)sessionID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_version;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_sessionID hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_version = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(SDAuthenticationRelockRequest *)self setSessionID:?];
    v4 = v5;
  }
}

@end