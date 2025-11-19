@interface ALCLStepCountEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRecordId:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALCLStepCountEntry

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasRecordId:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = ALCLStepCountEntry;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLStepCountEntry *)&v3 description], [(ALCLStepCountEntry *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_distance), @"distance"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_floorsAscended), @"floorsAscended"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_floorsDescended), @"floorsDescended"}];
  has = self->_has;
  if (has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_pace), @"pace"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_recordId), @"recordId"}];
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_regularEntry), @"regularEntry"}];
  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 3) = *&self->_timestamp;
    *(a3 + 52) |= 2u;
  }

  *(a3 + 8) = self->_count;
  *(a3 + 1) = *&self->_distance;
  *(a3 + 9) = self->_floorsAscended;
  *(a3 + 10) = self->_floorsDescended;
  has = self->_has;
  if (has)
  {
    *(a3 + 2) = *&self->_pace;
    *(a3 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 11) = self->_recordId;
    *(a3 + 52) |= 4u;
  }

  *(a3 + 48) = self->_regularEntry;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ((*&self->_has & 2) != 0)
  {
    *(result + 3) = *&self->_timestamp;
    *(result + 52) |= 2u;
  }

  *(result + 8) = self->_count;
  *(result + 1) = *&self->_distance;
  *(result + 9) = self->_floorsAscended;
  *(result + 10) = self->_floorsDescended;
  has = self->_has;
  if (has)
  {
    *(result + 2) = *&self->_pace;
    *(result + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(result + 11) = self->_recordId;
    *(result + 52) |= 4u;
  }

  *(result + 48) = self->_regularEntry;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 52) & 2) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_22;
      }
    }

    else if ((*(a3 + 52) & 2) != 0)
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (self->_count != *(a3 + 8) || self->_distance != *(a3 + 1) || self->_floorsAscended != *(a3 + 9) || self->_floorsDescended != *(a3 + 10))
    {
      goto LABEL_22;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 52) & 1) == 0 || self->_pace != *(a3 + 2))
      {
        goto LABEL_22;
      }
    }

    else if (*(a3 + 52))
    {
      goto LABEL_22;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 52) & 4) == 0 || self->_recordId != *(a3 + 11))
      {
        goto LABEL_22;
      }
    }

    else if ((*(a3 + 52) & 4) != 0)
    {
      goto LABEL_22;
    }

    LOBYTE(v5) = self->_regularEntry == *(a3 + 48);
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v4 = vnegq_f64(v8);
    v2.i64[0] = vbslq_s8(v4, v3, v2).i64[0];
    v9 = 2654435761u * *v2.i64;
    v10 = v9 + v7;
    if (v7 <= 0.0)
    {
      v10 = 2654435761u * *v2.i64;
    }

    v5 = v9 - fabs(v7);
    if (v7 >= 0.0)
    {
      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  distance = self->_distance;
  v12 = -distance;
  if (distance >= 0.0)
  {
    v12 = self->_distance;
  }

  *v3.i64 = floor(v12 + 0.5);
  v13 = (v12 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  v18 = vbslq_s8(v15, v4, v3);
  v16 = 2654435761u * *v18.i64;
  v17 = v16 + v13;
  *v18.i64 = fabs(v13);
  if (v13 <= 0.0)
  {
    v17 = v16;
  }

  v19 = v16 - *v18.i64;
  if (v13 >= 0.0)
  {
    v19 = v17;
  }

  if (*&self->_has)
  {
    v18.i64[0] = *&self->_pace;
    if (*v18.i64 < 0.0)
    {
      *v18.i64 = -*v18.i64;
    }

    *v4.i64 = floor(*v18.i64 + 0.5);
    v21 = (*v18.i64 - *v4.i64) * 1.84467441e19;
    *v18.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v20 = 2654435761u * *vbslq_s8(v15, v18, v4).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v20 += v21;
      }

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 -= fabs(v21);
      if ((*&self->_has & 4) == 0)
      {
LABEL_26:
        v22 = 0;
        return (2654435761 * self->_count) ^ v5 ^ (2654435761 * self->_floorsAscended) ^ (2654435761 * self->_floorsDescended) ^ v20 ^ v22 ^ (2654435761 * self->_regularEntry) ^ v19;
      }
    }
  }

  else
  {
    v20 = 0;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_26;
    }
  }

  v22 = 2654435761 * self->_recordId;
  return (2654435761 * self->_count) ^ v5 ^ (2654435761 * self->_floorsAscended) ^ (2654435761 * self->_floorsDescended) ^ v20 ^ v22 ^ (2654435761 * self->_regularEntry) ^ v19;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 52) & 2) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 2u;
  }

  self->_count = *(a3 + 8);
  self->_distance = *(a3 + 1);
  self->_floorsAscended = *(a3 + 9);
  self->_floorsDescended = *(a3 + 10);
  v3 = *(a3 + 52);
  if (v3)
  {
    self->_pace = *(a3 + 2);
    *&self->_has |= 1u;
    v3 = *(a3 + 52);
  }

  if ((v3 & 4) != 0)
  {
    self->_recordId = *(a3 + 11);
    *&self->_has |= 4u;
  }

  self->_regularEntry = *(a3 + 48);
}

@end