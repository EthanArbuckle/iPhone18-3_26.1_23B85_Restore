@interface SDAuthenticationToken
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

@implementation SDAuthenticationToken

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
  v7.super_class = SDAuthenticationToken;
  v3 = [(SDAuthenticationToken *)&v7 description];
  v4 = [(SDAuthenticationToken *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  aksToken = self->_aksToken;
  if (aksToken)
  {
    [v3 setObject:aksToken forKey:@"aksToken"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aksToken)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_version;
    *(v4 + 36) |= 2u;
  }

  v5 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v5;
  }

  if (self->_aksToken)
  {
    [v5 setAksToken:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[4] = self->_errorCode;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_aksToken copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  if (*&self->_has)
  {
    *(v6 + 4) = self->_errorCode;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_15;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(v4 + 1))
  {
    if (![(NSData *)aksToken isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_errorCode != *(v4 + 4))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sessionID hash];
  v5 = [(NSData *)self->_aksToken hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[9] & 2) != 0)
  {
    self->_version = v4[8];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(SDAuthenticationToken *)self setSessionID:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SDAuthenticationToken *)self setAksToken:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_errorCode = v4[4];
    *&self->_has |= 1u;
  }
}

@end