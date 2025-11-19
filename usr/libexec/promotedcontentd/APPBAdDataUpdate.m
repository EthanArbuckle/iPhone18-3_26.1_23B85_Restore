@interface APPBAdDataUpdate
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasImpressionCountAdjustment:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdDataUpdate

+ (id)options
{
  if (qword_1004E69E8 != -1)
  {
    sub_100393E98();
  }

  v3 = qword_1004E69E0;

  return v3;
}

- (void)setHasPriority:(BOOL)a3
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

- (void)setHasImpressionCountAdjustment:(BOOL)a3
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
  v7.super_class = APPBAdDataUpdate;
  v3 = [(APPBAdDataUpdate *)&v7 description];
  v4 = [(APPBAdDataUpdate *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_expirationDate];
    [v4 setObject:v9 forKey:@"expirationDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:self->_priority];
  [v4 setObject:v10 forKey:@"priority"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [NSNumber numberWithInt:self->_impressionCountAdjustment];
    [v4 setObject:v7 forKey:@"impressionCountAdjustment"];
  }

LABEL_7:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_uniqueIdentifier)
  {
    sub_100393EAC();
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFixed64Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setUniqueIdentifier:self->_uniqueIdentifier];
  has = self->_has;
  if (has)
  {
    *(v5 + 1) = *&self->_expirationDate;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 2) = self->_priority;
  *(v5 + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 6) = self->_impressionCountAdjustment;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5[2] = self->_priority;
    *(v5 + 40) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5[1] = *&self->_expirationDate;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 6) = self->_impressionCountAdjustment;
    *(v5 + 40) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 4))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_expirationDate != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_priority != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_impressionCountAdjustment != *(v4 + 6))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v4.i64 = floor(expirationDate + 0.5);
    v8 = (expirationDate - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761u * self->_priority;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    return v6 ^ v3 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = 2654435761 * self->_impressionCountAdjustment;
  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    v6 = v4;
    [(APPBAdDataUpdate *)self setUniqueIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    self->_expirationDate = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_priority = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_6:
    self->_impressionCountAdjustment = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_7:
}

@end