@interface APPBOptOutRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOptedOutStatus:(BOOL)a3;
- (void)setHasTimezone:(BOOL)a3;
- (void)setHasTransmitTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBOptOutRequest

+ (id)options
{
  if (qword_1004E6AF0 != -1)
  {
    sub_1003940A0();
  }

  v3 = qword_1004E6AE8;

  return v3;
}

- (void)setHasOptedOutStatus:(BOOL)a3
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

- (void)setHasTransmitTimestamp:(BOOL)a3
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

- (void)setHasTimezone:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBOptOutRequest;
  v3 = [(APPBOptOutRequest *)&v7 description];
  v4 = [(APPBOptOutRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v3 setObject:iAdID forKey:@"iAdID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_optedOutStatus];
    [v5 setObject:v11 forKey:@"optedOutStatus"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [NSNumber numberWithDouble:self->_transmitTimestamp];
  [v5 setObject:v12 forKey:@"transmitTimestamp"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v13 = [NSNumber numberWithDouble:self->_statusChangeTimestamp];
  [v5 setObject:v13 forKey:@"statusChangeTimestamp"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *&v4 = self->_timezone;
    v8 = [NSNumber numberWithFloat:v4];
    [v5 setObject:v8 forKey:@"timezone"];
  }

LABEL_8:
  dPID = self->_dPID;
  if (dPID)
  {
    [v5 setObject:dPID forKey:@"DPID"];
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteDoubleField();
  v4 = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    PBDataWriterWriteFloatField();
    v4 = v6;
  }

LABEL_8:
  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_iAdID)
  {
    [v4 setIAdID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 44) = self->_optedOutStatus;
    *(v4 + 48) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = *&self->_transmitTimestamp;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 1) = *&self->_statusChangeTimestamp;
  *(v4 + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(v4 + 10) = LODWORD(self->_timezone);
    *(v4 + 48) |= 4u;
  }

LABEL_8:
  if (self->_dPID)
  {
    [v6 setDPID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 44) = self->_optedOutStatus;
    *(v5 + 48) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v5[1] = *&self->_statusChangeTimestamp;
      *(v5 + 48) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v5[2] = *&self->_transmitTimestamp;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 10) = LODWORD(self->_timezone);
    *(v5 + 48) |= 4u;
  }

LABEL_6:
  v9 = [(NSData *)self->_dPID copyWithZone:a3];
  v10 = v5[3];
  v5[3] = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(v4 + 4))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 48) & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  if ((*(v4 + 48) & 8) == 0)
  {
    goto LABEL_29;
  }

  if (self->_optedOutStatus)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_29;
  }

LABEL_6:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_transmitTimestamp != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_statusChangeTimestamp != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_timezone != *(v4 + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_29;
  }

  dPID = self->_dPID;
  if (dPID | *(v4 + 3))
  {
    v7 = [(NSData *)dPID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_30:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iAdID hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_optedOutStatus;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  transmitTimestamp = self->_transmitTimestamp;
  if (transmitTimestamp < 0.0)
  {
    transmitTimestamp = -transmitTimestamp;
  }

  *v4.i64 = floor(transmitTimestamp + 0.5);
  v8 = (transmitTimestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
  v10 = 2654435761u * *v4.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if (*&self->_has)
  {
    statusChangeTimestamp = self->_statusChangeTimestamp;
    if (statusChangeTimestamp < 0.0)
    {
      statusChangeTimestamp = -statusChangeTimestamp;
    }

    *v4.i64 = floor(statusChangeTimestamp + 0.5);
    v13 = (statusChangeTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v14), v5, v4);
    v11 = 2654435761u * *v4.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    timezone = self->_timezone;
    if (timezone < 0.0)
    {
      timezone = -timezone;
    }

    *v4.i32 = floorf(timezone + 0.5);
    v17 = (timezone - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v18.i64[0] = 0x8000000080000000;
    v18.i64[1] = 0x8000000080000000;
    v15 = 2654435761u * *vbslq_s8(v18, v5, v4).i32;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabsf(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11 ^ v15 ^ [(NSData *)self->_dPID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(APPBOptOutRequest *)self setIAdID:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if ((v5 & 8) != 0)
  {
    self->_optedOutStatus = *(v4 + 44);
    *&self->_has |= 8u;
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_transmitTimestamp = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_statusChangeTimestamp = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_7:
    self->_timezone = *(v4 + 10);
    *&self->_has |= 4u;
  }

LABEL_8:
  if (*(v4 + 3))
  {
    [(APPBOptOutRequest *)self setDPID:?];
    v4 = v6;
  }
}

@end