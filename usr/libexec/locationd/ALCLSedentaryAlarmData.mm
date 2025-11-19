@interface ALCLSedentaryAlarmData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALCLSedentaryAlarmData

- (id)typeAsString:(int)a3
{
  if (a3 >= 8)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return *(&off_102457010 + a3);
  }
}

- (int)StringAsType:(id)a3
{
  if ([a3 isEqualToString:@"kAlarmTypeReminder"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kAlarmTypeFinal"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kAlarmTypeReset"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kAlarmTypeActiveReminder"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kAlarmTypeDrivingReminder"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"kAlarmTypeDeskReminder"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"kAlarmTypeTestSedentary"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"kAlarmTypeTestActive"])
  {
    return 7;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLSedentaryAlarmData;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLSedentaryAlarmData *)&v3 description], [(ALCLSedentaryAlarmData *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_firedTime), @"firedTime"}];
  type = self->_type;
  if (type >= 8)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = *(&off_102457010 + type);
  }

  [v3 setObject:v5 forKey:@"type"];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_didWake), @"didWake"}];
  if (*&self->_has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_regularEntry), @"regularEntry"}];
  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 1) = *&self->_firedTime;
  *(a3 + 6) = self->_type;
  *(a3 + 28) = self->_didWake;
  if (*&self->_has)
  {
    *(a3 + 2) = *&self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  *(a3 + 29) = self->_regularEntry;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_firedTime;
  *(result + 6) = self->_type;
  *(result + 28) = self->_didWake;
  if (*&self->_has)
  {
    *(result + 2) = *&self->_timestamp;
    *(result + 32) |= 1u;
  }

  *(result + 29) = self->_regularEntry;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_firedTime != *(a3 + 1) || self->_type != *(a3 + 6))
    {
      goto LABEL_14;
    }

    if (self->_didWake)
    {
      if ((*(a3 + 28) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 32))
    {
      goto LABEL_14;
    }

    LOBYTE(v5) = self->_regularEntry == *(a3 + 29);
  }

  return v5;
}

- (unint64_t)hash
{
  firedTime = self->_firedTime;
  v6 = -firedTime;
  if (firedTime >= 0.0)
  {
    v6 = self->_firedTime;
  }

  *v3.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  v3.i64[0] = vbslq_s8(v9, v4, v3).i64[0];
  v10 = 2654435761u * *v3.i64;
  v11 = v10 + v7;
  if (v7 <= 0.0)
  {
    v11 = 2654435761u * *v3.i64;
  }

  v12 = v10 - fabs(v7);
  if (v7 >= 0.0)
  {
    v12 = v11;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v15 = (timestamp - *v2.i64) * 1.84467441e19;
    *v4.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v2.i64[0] = vbslq_s8(v9, v4, v2).i64[0];
    v16 = 2654435761u * *v2.i64;
    v17 = v16 + v15;
    if (v15 <= 0.0)
    {
      v17 = 2654435761u * *v2.i64;
    }

    v13 = v16 - fabs(v15);
    if (v15 >= 0.0)
    {
      v13 = v17;
    }
  }

  else
  {
    v13 = 0;
  }

  return (2654435761 * self->_type) ^ (2654435761 * self->_didWake) ^ v13 ^ (2654435761 * self->_regularEntry) ^ v12;
}

- (void)mergeFrom:(id)a3
{
  self->_firedTime = *(a3 + 1);
  self->_type = *(a3 + 6);
  self->_didWake = *(a3 + 28);
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 1u;
  }

  self->_regularEntry = *(a3 + 29);
}

@end