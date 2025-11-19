@interface SDAuthenticationPreRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationPreRequest

- (void)setHasVersion:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationPreRequest;
  v3 = [(SDAuthenticationPreRequest *)&v7 description];
  v4 = [(SDAuthenticationPreRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[6] = self->_type;
    *(v4 + 32) |= 1u;
  }

  v6 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v6;
  }

  if (self->_awdlInfo)
  {
    [v6 setAwdlInfo:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSData *)self->_awdlInfo copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 2) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_16;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 7);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_type = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 2))
  {
    [(SDAuthenticationPreRequest *)self setSessionID:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(SDAuthenticationPreRequest *)self setAwdlInfo:?];
    v4 = v6;
  }
}

@end