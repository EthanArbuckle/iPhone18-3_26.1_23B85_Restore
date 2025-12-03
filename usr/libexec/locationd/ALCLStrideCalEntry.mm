@interface ALCLStrideCalEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPacebin:(BOOL)pacebin;
- (void)setHasRecordId:(BOOL)id;
- (void)setHasRegularEntry:(BOOL)entry;
- (void)writeTo:(id)to;
@end

@implementation ALCLStrideCalEntry

- (void)setHasRecordId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPacebin:(BOOL)pacebin
{
  if (pacebin)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRegularEntry:(BOOL)entry
{
  if (entry)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLStrideCalEntry;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLStrideCalEntry *)&v3 description], [(ALCLStrideCalEntry *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_recordId), @"recordId"}];
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_startTime), @"startTime"}];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_pacebin), @"pacebin"}];
  }

  *&v4 = self->_kvalue;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"kvalue"}];
  *&v5 = self->_kvalueTrack;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v5), @"kvalueTrack"}];
  *&v6 = self->_score;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"score"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_endTime), @"endTime"}];
  *&v7 = self->_distance;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v7), @"distance"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_steps), @"steps"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_session), @"session"}];
  *&v8 = self->_speed;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v8), @"speed"}];
  has = self->_has;
  if (has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_regularEntry), @"regularEntry"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteFloatField();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 12) = self->_recordId;
    *(to + 72) |= 4u;
  }

  *(to + 2) = *&self->_startTime;
  if ((*&self->_has & 2) != 0)
  {
    *(to + 11) = self->_pacebin;
    *(to + 72) |= 2u;
  }

  *(to + 9) = LODWORD(self->_kvalue);
  *(to + 10) = LODWORD(self->_kvalueTrack);
  *(to + 13) = LODWORD(self->_score);
  *(to + 1) = *&self->_endTime;
  *(to + 8) = LODWORD(self->_distance);
  *(to + 16) = self->_steps;
  *(to + 14) = self->_session;
  *(to + 15) = LODWORD(self->_speed);
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

LABEL_9:
    *(to + 68) = self->_regularEntry;
    *(to + 72) |= 8u;
    return;
  }

  *(to + 3) = *&self->_timestamp;
  *(to + 72) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ((*&self->_has & 4) != 0)
  {
    *(result + 12) = self->_recordId;
    *(result + 72) |= 4u;
  }

  *(result + 2) = *&self->_startTime;
  if ((*&self->_has & 2) != 0)
  {
    *(result + 11) = self->_pacebin;
    *(result + 72) |= 2u;
  }

  *(result + 9) = LODWORD(self->_kvalue);
  *(result + 10) = LODWORD(self->_kvalueTrack);
  *(result + 13) = LODWORD(self->_score);
  *(result + 1) = *&self->_endTime;
  *(result + 8) = LODWORD(self->_distance);
  *(result + 16) = self->_steps;
  *(result + 14) = self->_session;
  *(result + 15) = LODWORD(self->_speed);
  has = self->_has;
  if (has)
  {
    *(result + 3) = *&self->_timestamp;
    *(result + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(result + 68) = self->_regularEntry;
    *(result + 72) |= 8u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 72) & 4) == 0 || self->_recordId != *(equal + 12))
      {
        goto LABEL_28;
      }
    }

    else if ((*(equal + 72) & 4) != 0)
    {
      goto LABEL_28;
    }

    if (self->_startTime != *(equal + 2))
    {
LABEL_28:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_pacebin != *(equal + 11))
      {
        goto LABEL_28;
      }
    }

    else if ((*(equal + 72) & 2) != 0)
    {
      goto LABEL_28;
    }

    if (self->_kvalue != *(equal + 9) || self->_kvalueTrack != *(equal + 10) || self->_score != *(equal + 13) || self->_endTime != *(equal + 1) || self->_distance != *(equal + 8) || self->_steps != *(equal + 16) || self->_session != *(equal + 14) || self->_speed != *(equal + 15))
    {
      goto LABEL_28;
    }

    if (*&self->_has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_28;
      }
    }

    else if (*(equal + 72))
    {
      goto LABEL_28;
    }

    LOBYTE(v5) = (*(equal + 72) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 72) & 8) == 0)
      {
        goto LABEL_28;
      }

      if (self->_regularEntry)
      {
        if ((*(equal + 68) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (*(equal + 68))
      {
        goto LABEL_28;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_recordId;
  }

  else
  {
    v8 = 0;
  }

  startTime = self->_startTime;
  if (startTime < 0.0)
  {
    startTime = -startTime;
  }

  *v3.i64 = floor(startTime + 0.5);
  *v2.i64 = (startTime - *v3.i64) * 1.84467441e19;
  *v5.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = vnegq_f64(v10);
  v3.i64[0] = vbslq_s8(v11, v5, v3).i64[0];
  v12 = 2654435761u * *v3.i64;
  v13 = v12 + *v2.i64;
  if (*v2.i64 <= 0.0)
  {
    v13 = 2654435761u * *v3.i64;
  }

  v14 = v12 - fabs(*v2.i64);
  if (*v2.i64 >= 0.0)
  {
    v14 = v13;
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_pacebin;
  }

  else
  {
    v15 = 0;
  }

  kvalue = self->_kvalue;
  v17 = -kvalue;
  if (kvalue >= 0.0)
  {
    v17 = self->_kvalue;
  }

  *v5.i32 = floorf(v17 + 0.5);
  v18 = (v17 - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20 = vbslq_s8(v19, v6, v5);
  v21 = 2654435761u * *v20.i32;
  v22 = v21 + v18;
  if (v18 <= 0.0)
  {
    v22 = 2654435761u * *v20.i32;
  }

  v23 = v21 - fabsf(v18);
  if (v18 >= 0.0)
  {
    v23 = v22;
  }

  kvalueTrack = self->_kvalueTrack;
  if (kvalueTrack < 0.0)
  {
    kvalueTrack = -kvalueTrack;
  }

  *v6.i32 = floorf(kvalueTrack + 0.5);
  v25 = (kvalueTrack - *v6.i32) * 1.8447e19;
  *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
  v26 = vbslq_s8(v19, v7, v6);
  v27 = 2654435761u * *v26.i32;
  v28 = v27 + v25;
  if (v25 <= 0.0)
  {
    v28 = 2654435761u * *v26.i32;
  }

  v29 = v27 - fabsf(v25);
  if (v25 >= 0.0)
  {
    v29 = v28;
  }

  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v26.i32 = floorf(score + 0.5);
  v31 = (score - *v26.i32) * 1.8447e19;
  *v7.i32 = *v26.i32 - (truncf(*v26.i32 * 5.421e-20) * 1.8447e19);
  v32 = vbslq_s8(v19, v7, v26);
  v33 = 2654435761u * *v32.i32;
  v34 = v33 + v31;
  if (v31 <= 0.0)
  {
    v34 = 2654435761u * *v32.i32;
  }

  v35 = v33 - fabsf(v31);
  if (v31 >= 0.0)
  {
    v35 = v34;
  }

  endTime = self->_endTime;
  if (endTime < 0.0)
  {
    endTime = -endTime;
  }

  *v4.i64 = floor(endTime + 0.5);
  *v20.i64 = (endTime - *v4.i64) * 1.84467441e19;
  *v32.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v37 = vbslq_s8(v11, v32, v4);
  v38 = 2654435761u * *v37.i64;
  v39 = v38 + *v20.i64;
  if (*v20.i64 <= 0.0)
  {
    v39 = 2654435761u * *v37.i64;
  }

  v40 = v38 - fabs(*v20.i64);
  if (*v20.i64 >= 0.0)
  {
    v40 = v39;
  }

  distance = self->_distance;
  if (distance < 0.0)
  {
    distance = -distance;
  }

  *v11.i32 = floorf(distance + 0.5);
  v42 = (distance - *v11.i32) * 1.8447e19;
  *v20.i32 = *v11.i32 - (truncf(*v11.i32 * 5.421e-20) * 1.8447e19);
  v43 = vbslq_s8(v19, v20, v11);
  v44 = 2654435761u * *v43.i32;
  v45 = v44 + v42;
  if (v42 <= 0.0)
  {
    v45 = 2654435761u * *v43.i32;
  }

  v46 = v44 - fabsf(v42);
  if (v42 >= 0.0)
  {
    v46 = v45;
  }

  speed = self->_speed;
  if (speed < 0.0)
  {
    speed = -speed;
  }

  *v2.i32 = floorf(speed + 0.5);
  v48 = (speed - *v2.i32) * 1.8447e19;
  *v43.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v19, v43, v2).i32[0];
  v49 = 2654435761u * *v2.i32;
  v50 = v49 + v48;
  if (v48 <= 0.0)
  {
    v50 = 2654435761u * *v2.i32;
  }

  v51 = v49 - fabsf(v48);
  if (v48 >= 0.0)
  {
    v51 = v50;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v19.i64 = floor(timestamp + 0.5);
    v54 = (timestamp - *v19.i64) * 1.84467441e19;
    *v37.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v55.f64[0] = NAN;
    v55.f64[1] = NAN;
    v52 = 2654435761u * *vbslq_s8(vnegq_f64(v55), v37, v19).i64;
    if (v54 >= 0.0)
    {
      if (v54 > 0.0)
      {
        v52 += v54;
      }
    }

    else
    {
      v52 -= fabs(v54);
    }
  }

  else
  {
    v52 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v56 = 2654435761 * self->_regularEntry;
  }

  else
  {
    v56 = 0;
  }

  return v14 ^ v8 ^ v15 ^ v23 ^ v29 ^ v35 ^ v40 ^ v46 ^ (2654435761 * self->_steps) ^ (2654435761 * self->_session) ^ v51 ^ v52 ^ v56;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 72) & 4) != 0)
  {
    self->_recordId = *(from + 12);
    *&self->_has |= 4u;
  }

  self->_startTime = *(from + 2);
  if ((*(from + 72) & 2) != 0)
  {
    self->_pacebin = *(from + 11);
    *&self->_has |= 2u;
  }

  self->_kvalue = *(from + 9);
  self->_kvalueTrack = *(from + 10);
  self->_score = *(from + 13);
  self->_endTime = *(from + 1);
  self->_distance = *(from + 8);
  self->_steps = *(from + 16);
  self->_session = *(from + 14);
  self->_speed = *(from + 15);
  if ((*(from + 72) & 1) == 0)
  {
    if ((*(from + 72) & 8) == 0)
    {
      return;
    }

LABEL_9:
    self->_regularEntry = *(from + 68);
    *&self->_has |= 8u;
    return;
  }

  self->_timestamp = *(from + 3);
  *&self->_has |= 1u;
  if ((*(from + 72) & 8) != 0)
  {
    goto LABEL_9;
  }
}

@end