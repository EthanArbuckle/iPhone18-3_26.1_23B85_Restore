@interface SDAuthenticationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionStartDate:(BOOL)date;
- (void)setHasType:(BOOL)type;
- (void)setHasUnlockDate:(BOOL)date;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationRequest

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUnlockDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionStartDate:(BOOL)date
{
  if (date)
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
  v7.super_class = SDAuthenticationRequest;
  v3 = [(SDAuthenticationRequest *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 8) != 0)
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

  rangingToken = self->_rangingToken;
  if (rangingToken)
  {
    [v3 setObject:rangingToken forKey:@"rangingToken"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [NSNumber numberWithDouble:self->_unlockDate];
    [v3 setObject:v10 forKey:@"unlockDate"];
  }

  aksToken = self->_aksToken;
  if (aksToken)
  {
    [v3 setObject:aksToken forKey:@"aksToken"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [NSNumber numberWithDouble:self->_sessionStartDate];
    [v3 setObject:v12 forKey:@"sessionStartDate"];
  }

  registrationID = self->_registrationID;
  if (registrationID)
  {
    [v3 setObject:registrationID forKey:@"registrationID"];
  }

  if (*&self->_has)
  {
    v14 = [NSNumber numberWithDouble:self->_arTrackingDistance];
    [v3 setObject:v14 forKey:@"arTrackingDistance"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_awdlInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_rangingToken)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    unlockDate = self->_unlockDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_aksToken)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    sessionStartDate = self->_sessionStartDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_registrationID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    arTrackingDistance = self->_arTrackingDistance;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[19] = self->_version;
    *(toCopy + 80) |= 0x10u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[18] = self->_type;
    *(toCopy + 80) |= 8u;
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

  if (self->_rangingToken)
  {
    [v6 setRangingToken:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_unlockDate;
    *(toCopy + 80) |= 4u;
  }

  if (self->_aksToken)
  {
    [v6 setAksToken:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_sessionStartDate;
    *(toCopy + 80) |= 2u;
  }

  if (self->_registrationID)
  {
    [v6 setRegistrationID:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_arTrackingDistance;
    *(toCopy + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5[19] = self->_version;
    *(v5 + 80) |= 0x10u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5[18] = self->_type;
    *(v5 + 80) |= 8u;
  }

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = v6[8];
  v6[8] = v8;

  v10 = [(NSData *)self->_awdlInfo copyWithZone:zone];
  v11 = v6[5];
  v6[5] = v10;

  v12 = [(NSData *)self->_rangingToken copyWithZone:zone];
  v13 = v6[6];
  v6[6] = v12;

  if ((*&self->_has & 4) != 0)
  {
    v6[3] = *&self->_unlockDate;
    *(v6 + 80) |= 4u;
  }

  v14 = [(NSData *)self->_aksToken copyWithZone:zone];
  v15 = v6[4];
  v6[4] = v14;

  if ((*&self->_has & 2) != 0)
  {
    v6[2] = *&self->_sessionStartDate;
    *(v6 + 80) |= 2u;
  }

  v16 = [(NSString *)self->_registrationID copyWithZone:zone];
  v17 = v6[7];
  v6[7] = v16;

  if (*&self->_has)
  {
    v6[1] = *&self->_arTrackingDistance;
    *(v6 + 80) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(equalCopy + 80);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 80) & 0x10) == 0 || self->_version != *(equalCopy + 19))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 80) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 80) & 8) == 0 || self->_type != *(equalCopy + 18))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 80) & 8) != 0)
  {
    goto LABEL_38;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 8) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_38;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(equalCopy + 5))
  {
    if (![(NSData *)awdlInfo isEqual:?])
    {
      goto LABEL_38;
    }
  }

  rangingToken = self->_rangingToken;
  if (rangingToken | *(equalCopy + 6))
  {
    if (![(NSData *)rangingToken isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 80);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_unlockDate != *(equalCopy + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_38;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(equalCopy + 4))
  {
    if (![(NSData *)aksToken isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
  }

  v12 = *(equalCopy + 80);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_sessionStartDate != *(equalCopy + 2))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_38;
  }

  registrationID = self->_registrationID;
  if (registrationID | *(equalCopy + 7))
  {
    if ([(NSString *)registrationID isEqual:?])
    {
      has = self->_has;
      goto LABEL_34;
    }

LABEL_38:
    v14 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v14 = (*(equalCopy + 80) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_arTrackingDistance != *(equalCopy + 1))
    {
      goto LABEL_38;
    }

    v14 = 1;
  }

LABEL_39:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v28 = 2654435761 * self->_version;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = [(NSString *)self->_sessionID hash];
  v5 = [(NSData *)self->_awdlInfo hash];
  v6 = [(NSData *)self->_rangingToken hash];
  if ((*&self->_has & 4) != 0)
  {
    unlockDate = self->_unlockDate;
    if (unlockDate < 0.0)
    {
      unlockDate = -unlockDate;
    }

    *v7.i64 = floor(unlockDate + 0.5);
    v11 = (unlockDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSData *)self->_aksToken hash];
  if ((*&self->_has & 2) != 0)
  {
    sessionStartDate = self->_sessionStartDate;
    if (sessionStartDate < 0.0)
    {
      sessionStartDate = -sessionStartDate;
    }

    *v14.i64 = floor(sessionStartDate + 0.5);
    v18 = (sessionStartDate - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = [(NSString *)self->_registrationID hash];
  if (*&self->_has)
  {
    arTrackingDistance = self->_arTrackingDistance;
    if (arTrackingDistance < 0.0)
    {
      arTrackingDistance = -arTrackingDistance;
    }

    *v21.i64 = floor(arTrackingDistance + 0.5);
    v25 = (arTrackingDistance - *v21.i64) * 1.84467441e19;
    *v22.i64 = *v21.i64 - trunc(*v21.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v22, v21).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  return v3 ^ v28 ^ v4 ^ v5 ^ v6 ^ v9 ^ v13 ^ v16 ^ v20 ^ v23;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 80);
  if ((v5 & 0x10) != 0)
  {
    self->_version = *(fromCopy + 19);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 80);
  }

  if ((v5 & 8) != 0)
  {
    self->_type = *(fromCopy + 18);
    *&self->_has |= 8u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(SDAuthenticationRequest *)self setSessionID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(SDAuthenticationRequest *)self setAwdlInfo:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(SDAuthenticationRequest *)self setRangingToken:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 80) & 4) != 0)
  {
    self->_unlockDate = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(SDAuthenticationRequest *)self setAksToken:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 80) & 2) != 0)
  {
    self->_sessionStartDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 7))
  {
    [(SDAuthenticationRequest *)self setRegistrationID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 80))
  {
    self->_arTrackingDistance = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end