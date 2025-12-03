@interface SDAuthenticationResponse
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

@implementation SDAuthenticationResponse

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
  v7.super_class = SDAuthenticationResponse;
  v3 = [(SDAuthenticationResponse *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_aksToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_underlyingError)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[12] = self->_version;
    *(toCopy + 52) |= 2u;
  }

  v5 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v5;
  }

  if (self->_awdlInfo)
  {
    [v5 setAwdlInfo:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[6] = self->_errorCode;
    *(toCopy + 52) |= 1u;
  }

  if (self->_aksToken)
  {
    [v5 setAksToken:?];
    toCopy = v5;
  }

  if (self->_underlyingError)
  {
    [v5 setUnderlyingError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[12] = self->_version;
    *(v5 + 52) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(NSData *)self->_awdlInfo copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_errorCode;
    *(v6 + 52) |= 1u;
  }

  v11 = [(NSData *)self->_aksToken copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(NSData *)self->_underlyingError copyWithZone:zone];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_version != *(equalCopy + 12))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 4) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_20;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(equalCopy + 2))
  {
    if (![(NSData *)awdlInfo isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_errorCode != *(equalCopy + 6))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_20;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(equalCopy + 1) && ![(NSData *)aksToken isEqual:?])
  {
    goto LABEL_20;
  }

  underlyingError = self->_underlyingError;
  if (underlyingError | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[13] & 2) != 0)
  {
    self->_version = fromCopy[12];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SDAuthenticationResponse *)self setSessionID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SDAuthenticationResponse *)self setAwdlInfo:?];
    fromCopy = v5;
  }

  if (fromCopy[13])
  {
    self->_errorCode = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(SDAuthenticationResponse *)self setAksToken:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(SDAuthenticationResponse *)self setUnderlyingError:?];
    fromCopy = v5;
  }
}

@end