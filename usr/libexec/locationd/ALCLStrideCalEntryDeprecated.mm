@interface ALCLStrideCalEntryDeprecated
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRecordId:(BOOL)id;
- (void)setHasRegularEntry:(BOOL)entry;
- (void)writeTo:(id)to;
@end

@implementation ALCLStrideCalEntryDeprecated

- (void)setHasRecordId:(BOOL)id
{
  if (id)
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
  v3.super_class = ALCLStrideCalEntryDeprecated;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLStrideCalEntryDeprecated *)&v3 description], [(ALCLStrideCalEntryDeprecated *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_recordId), @"recordId"}];
  }

  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_pacebin), @"pacebin"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_kvalue), @"kvalue"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_kvalueTrack), @"kvalueTrack"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_score), @"score"}];
  has = self->_has;
  if (has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_regularEntry), @"regularEntry"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) != 0)
  {
    *(to + 11) = self->_recordId;
    *(to + 52) |= 2u;
  }

  *(to + 10) = self->_pacebin;
  *(to + 1) = *&self->_kvalue;
  *(to + 2) = *&self->_kvalueTrack;
  *(to + 3) = *&self->_score;
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

LABEL_7:
    *(to + 48) = self->_regularEntry;
    *(to + 52) |= 4u;
    return;
  }

  *(to + 4) = *&self->_timestamp;
  *(to + 52) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ((*&self->_has & 2) != 0)
  {
    *(result + 11) = self->_recordId;
    *(result + 52) |= 2u;
  }

  *(result + 10) = self->_pacebin;
  *(result + 1) = *&self->_kvalue;
  *(result + 2) = *&self->_kvalueTrack;
  *(result + 3) = *&self->_score;
  has = self->_has;
  if (has)
  {
    *(result + 4) = *&self->_timestamp;
    *(result + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(result + 48) = self->_regularEntry;
    *(result + 52) |= 4u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 52) & 2) == 0 || self->_recordId != *(equal + 11))
      {
        goto LABEL_18;
      }
    }

    else if ((*(equal + 52) & 2) != 0)
    {
      goto LABEL_18;
    }

    if (self->_pacebin != *(equal + 10) || self->_kvalue != *(equal + 1) || self->_kvalueTrack != *(equal + 2) || self->_score != *(equal + 3))
    {
      goto LABEL_18;
    }

    if (*&self->_has)
    {
      if ((*(equal + 52) & 1) == 0 || self->_timestamp != *(equal + 4))
      {
        goto LABEL_18;
      }
    }

    else if (*(equal + 52))
    {
      goto LABEL_18;
    }

    LOBYTE(v5) = (*(equal + 52) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 52) & 4) == 0)
      {
LABEL_18:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_regularEntry)
      {
        if ((*(equal + 48) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if (*(equal + 48))
      {
        goto LABEL_18;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_recordId;
  }

  else
  {
    v5 = 0;
  }

  kvalue = self->_kvalue;
  v7 = -kvalue;
  if (kvalue >= 0.0)
  {
    v7 = self->_kvalue;
  }

  *v2.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, v3, v2);
  v12 = 2654435761u * *v11.i64;
  v13 = v12 + v8;
  if (v8 <= 0.0)
  {
    v13 = 2654435761u * *v11.i64;
  }

  v14 = v12 - fabs(v8);
  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  kvalueTrack = self->_kvalueTrack;
  if (kvalueTrack < 0.0)
  {
    kvalueTrack = -kvalueTrack;
  }

  *v3.i64 = floor(kvalueTrack + 0.5);
  v16 = (kvalueTrack - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v17 = vbslq_s8(v10, v4, v3);
  v18 = 2654435761u * *v17.i64;
  v19 = v18 + v16;
  if (v16 <= 0.0)
  {
    v19 = 2654435761u * *v17.i64;
  }

  v20 = v18 - fabs(v16);
  v21 = v16 < 0.0;
  score = self->_score;
  if (!v21)
  {
    v20 = v19;
  }

  if (score < 0.0)
  {
    score = -score;
  }

  *v17.i64 = floor(score + 0.5);
  v23 = (score - *v17.i64) * 1.84467441e19;
  *v4.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
  v24 = vbslq_s8(v10, v4, v17);
  v25 = 2654435761u * *v24.i64;
  v26 = v25 + v23;
  if (v23 <= 0.0)
  {
    v26 = 2654435761u * *v24.i64;
  }

  v27 = v25 - fabs(v23);
  if (v23 >= 0.0)
  {
    v27 = v26;
  }

  if (*&self->_has)
  {
    v11.i64[0] = *&self->_timestamp;
    if (*v11.i64 < 0.0)
    {
      *v11.i64 = -*v11.i64;
    }

    *v24.i64 = floor(*v11.i64 + 0.5);
    v29 = (*v11.i64 - *v24.i64) * 1.84467441e19;
    *v11.i64 = *v24.i64 - trunc(*v24.i64 * 5.42101086e-20) * 1.84467441e19;
    v28 = 2654435761u * *vbslq_s8(v10, v11, v24).i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v28 += v29;
      }

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v28 -= fabs(v29);
      if ((*&self->_has & 4) == 0)
      {
LABEL_33:
        v30 = 0;
        return (2654435761 * self->_pacebin) ^ v5 ^ v14 ^ v20 ^ v27 ^ v28 ^ v30;
      }
    }
  }

  else
  {
    v28 = 0;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_33;
    }
  }

  v30 = 2654435761 * self->_regularEntry;
  return (2654435761 * self->_pacebin) ^ v5 ^ v14 ^ v20 ^ v27 ^ v28 ^ v30;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 52) & 2) != 0)
  {
    self->_recordId = *(from + 11);
    *&self->_has |= 2u;
  }

  self->_pacebin = *(from + 10);
  self->_kvalue = *(from + 1);
  self->_kvalueTrack = *(from + 2);
  self->_score = *(from + 3);
  if ((*(from + 52) & 1) == 0)
  {
    if ((*(from + 52) & 4) == 0)
    {
      return;
    }

LABEL_7:
    self->_regularEntry = *(from + 48);
    *&self->_has |= 4u;
    return;
  }

  self->_timestamp = *(from + 4);
  *&self->_has |= 1u;
  if ((*(from + 52) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end