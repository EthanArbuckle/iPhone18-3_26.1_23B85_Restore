@interface SDAuthenticationResponse
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

@implementation SDAuthenticationResponse

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
  v7.super_class = SDAuthenticationResponse;
  v3 = [(SDAuthenticationResponse *)&v7 description];
  v4 = [(SDAuthenticationResponse *)self dictionaryRepresentation];
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

  awdlInfo = self->_awdlInfo;
  if (awdlInfo)
  {
    [v3 setObject:awdlInfo forKey:@"awdlInfo"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];
  }

  aksToken = self->_aksToken;
  if (aksToken)
  {
    [v3 setObject:aksToken forKey:@"aksToken"];
  }

  underlyingError = self->_underlyingError;
  if (underlyingError)
  {
    [v3 setObject:underlyingError forKey:@"underlyingError"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_aksToken)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[12] = self->_version;
    *(v4 + 52) |= 2u;
  }

  v5 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v5;
  }

  if (self->_awdlInfo)
  {
    [v5 setAwdlInfo:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[6] = self->_errorCode;
    *(v4 + 52) |= 1u;
  }

  if (self->_aksToken)
  {
    [v5 setAksToken:?];
    v4 = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[12] = self->_version;
    *(v5 + 52) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSData *)self->_awdlInfo copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_errorCode;
    *(v6 + 52) |= 1u;
  }

  v11 = [(NSData *)self->_aksToken copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(NSData *)self->_underlyingError copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_version != *(v4 + 12))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 4) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_20;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(v4 + 2))
  {
    if (![(NSData *)awdlInfo isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_errorCode != *(v4 + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_20;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(v4 + 1) && ![(NSData *)aksToken isEqual:?])
  {
    goto LABEL_20;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(v4 + 5))
  {
    v11 = [(NSData *)underlyingError isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_21:

  return v11;
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
  v5 = [(NSData *)self->_awdlInfo hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSData *)self->_aksToken hash];
  return v7 ^ v8 ^ [(NSData *)self->_underlyingError hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[13] & 2) != 0)
  {
    self->_version = v4[12];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 4))
  {
    [(SDAuthenticationResponse *)self setSessionID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(SDAuthenticationResponse *)self setAwdlInfo:?];
    v4 = v5;
  }

  if (v4[13])
  {
    self->_errorCode = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(SDAuthenticationResponse *)self setAksToken:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(SDAuthenticationResponse *)self setUnderlyingError:?];
    v4 = v5;
  }
}

@end