@interface SDAuthenticationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionStartDate:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUnlockDate:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationRequest

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUnlockDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionStartDate:(BOOL)a3
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
  v7.super_class = SDAuthenticationRequest;
  v3 = [(SDAuthenticationRequest *)&v7 description];
  v4 = [(SDAuthenticationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[19] = self->_version;
    *(v4 + 80) |= 0x10u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v4[18] = self->_type;
    *(v4 + 80) |= 8u;
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

  if (self->_rangingToken)
  {
    [v6 setRangingToken:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = *&self->_unlockDate;
    *(v4 + 80) |= 4u;
  }

  if (self->_aksToken)
  {
    [v6 setAksToken:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = *&self->_sessionStartDate;
    *(v4 + 80) |= 2u;
  }

  if (self->_registrationID)
  {
    [v6 setRegistrationID:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_arTrackingDistance;
    *(v4 + 80) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = v6[8];
  v6[8] = v8;

  v10 = [(NSData *)self->_awdlInfo copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  v12 = [(NSData *)self->_rangingToken copyWithZone:a3];
  v13 = v6[6];
  v6[6] = v12;

  if ((*&self->_has & 4) != 0)
  {
    v6[3] = *&self->_unlockDate;
    *(v6 + 80) |= 4u;
  }

  v14 = [(NSData *)self->_aksToken copyWithZone:a3];
  v15 = v6[4];
  v6[4] = v14;

  if ((*&self->_has & 2) != 0)
  {
    v6[2] = *&self->_sessionStartDate;
    *(v6 + 80) |= 2u;
  }

  v16 = [(NSString *)self->_registrationID copyWithZone:a3];
  v17 = v6[7];
  v6[7] = v16;

  if (*&self->_has)
  {
    v6[1] = *&self->_arTrackingDistance;
    *(v6 + 80) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(v4 + 80);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 80) & 0x10) == 0 || self->_version != *(v4 + 19))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 80) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 80) & 8) == 0 || self->_type != *(v4 + 18))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 80) & 8) != 0)
  {
    goto LABEL_38;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 8) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_38;
  }

  awdlInfo = self->_awdlInfo;
  if (awdlInfo | *(v4 + 5))
  {
    if (![(NSData *)awdlInfo isEqual:?])
    {
      goto LABEL_38;
    }
  }

  rangingToken = self->_rangingToken;
  if (rangingToken | *(v4 + 6))
  {
    if (![(NSData *)rangingToken isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v10 = *(v4 + 80);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_unlockDate != *(v4 + 3))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_38;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(v4 + 4))
  {
    if (![(NSData *)aksToken isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
  }

  v12 = *(v4 + 80);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_sessionStartDate != *(v4 + 2))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_38;
  }

  registrationID = self->_registrationID;
  if (registrationID | *(v4 + 7))
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
  v14 = (*(v4 + 80) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_arTrackingDistance != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 80);
  if ((v5 & 0x10) != 0)
  {
    self->_version = *(v4 + 19);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 80);
  }

  if ((v5 & 8) != 0)
  {
    self->_type = *(v4 + 18);
    *&self->_has |= 8u;
  }

  v6 = v4;
  if (*(v4 + 8))
  {
    [(SDAuthenticationRequest *)self setSessionID:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(SDAuthenticationRequest *)self setAwdlInfo:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(SDAuthenticationRequest *)self setRangingToken:?];
    v4 = v6;
  }

  if ((*(v4 + 80) & 4) != 0)
  {
    self->_unlockDate = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(SDAuthenticationRequest *)self setAksToken:?];
    v4 = v6;
  }

  if ((*(v4 + 80) & 2) != 0)
  {
    self->_sessionStartDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(SDAuthenticationRequest *)self setRegistrationID:?];
    v4 = v6;
  }

  if (*(v4 + 80))
  {
    self->_arTrackingDistance = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end