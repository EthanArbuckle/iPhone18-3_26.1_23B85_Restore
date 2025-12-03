@interface ALCLJacksonData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLsest:(BOOL)lsest;
- (void)setHasSumest:(BOOL)sumest;
- (void)writeTo:(id)to;
@end

@implementation ALCLJacksonData

- (void)setHasLsest:(BOOL)lsest
{
  if (lsest)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSumest:(BOOL)sumest
{
  if (sumest)
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
  v3.super_class = ALCLJacksonData;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLJacksonData *)&v3 description], [(ALCLJacksonData *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nPairs), @"nPairs"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *&v4 = self->_sumest;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"sumest"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  *&v4 = self->_lsest;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"lsest"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_fPal), @"fPal"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    PBDataWriterWriteFloatField();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_7:

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  *(to + 4) = self->_nPairs;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 3) = LODWORD(self->_lsest);
    *(to + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 2) = self->_fPal;
      *(to + 24) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = LODWORD(self->_sumest);
  *(to + 24) |= 4u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_nPairs;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = LODWORD(self->_lsest);
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = LODWORD(self->_sumest);
  *(result + 24) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_fPal;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_nPairs != *(equal + 4))
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_lsest != *(equal + 3))
      {
        goto LABEL_17;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
      goto LABEL_17;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0 || self->_sumest != *(equal + 5))
      {
        goto LABEL_17;
      }
    }

    else if ((*(equal + 24) & 4) != 0)
    {
      goto LABEL_17;
    }

    LOBYTE(v5) = (*(equal + 24) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_fPal != *(equal + 2))
      {
        goto LABEL_17;
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
    lsest = self->_lsest;
    if (lsest < 0.0)
    {
      lsest = -lsest;
    }

    *v2.i32 = floorf(lsest + 0.5);
    v6 = (lsest - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v7, v3, v2);
    v4 = 2654435761u * *v2.i32;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabsf(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    sumest = self->_sumest;
    if (sumest < 0.0)
    {
      sumest = -sumest;
    }

    *v2.i32 = floorf(sumest + 0.5);
    v10 = (sumest - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v8 = 2654435761u * *vbslq_s8(v11, v3, v2).i32;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabsf(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    v12 = 2654435761 * self->_fPal;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v8 ^ v12 ^ (2654435761 * self->_nPairs);
}

- (void)mergeFrom:(id)from
{
  self->_nPairs = *(from + 4);
  v3 = *(from + 24);
  if ((v3 & 2) != 0)
  {
    self->_lsest = *(from + 3);
    *&self->_has |= 2u;
    v3 = *(from + 24);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_fPal = *(from + 2);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(from + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_sumest = *(from + 5);
  *&self->_has |= 4u;
  if (*(from + 24))
  {
    goto LABEL_7;
  }
}

@end