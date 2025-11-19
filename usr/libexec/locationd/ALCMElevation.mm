@interface ALCMElevation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)gradeTypeAsString:(int)a3;
- (id)rawGradeTypeAsString:(int)a3;
- (id)sourceAsString:(int)a3;
- (int)StringAsGradeType:(id)a3;
- (int)StringAsRawGradeType:(id)a3;
- (int)StringAsSource:(id)a3;
- (int)gradeType;
- (int)rawGradeType;
- (int)source;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGradeType:(BOOL)a3;
- (void)setHasRawGradeType:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)setHasVerticalSpeed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALCMElevation

- (int)gradeType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_gradeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasGradeType:(BOOL)a3
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

- (id)gradeTypeAsString:(int)a3
{
  if (a3 >= 4)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_102455B88[a3];
  }
}

- (int)StringAsGradeType:(id)a3
{
  if ([a3 isEqualToString:@"Unknown"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"Uphill"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"Flat"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"Downhill"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasVerticalSpeed:(BOOL)a3
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

- (int)rawGradeType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_rawGradeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRawGradeType:(BOOL)a3
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

- (id)rawGradeTypeAsString:(int)a3
{
  if (a3 >= 4)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return off_102455B88[a3];
  }
}

- (int)StringAsRawGradeType:(id)a3
{
  if ([a3 isEqualToString:@"Unknown"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"Uphill"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"Flat"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"Downhill"])
  {
    return 3;
  }

  return 0;
}

- (int)source
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_source;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSource:(BOOL)a3
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

- (id)sourceAsString:(int)a3
{
  if (!a3)
  {
    return @"Phone";
  }

  if (a3 == 1)
  {
    return @"Watch";
  }

  return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
}

- (int)StringAsSource:(id)a3
{
  if ([a3 isEqualToString:@"Phone"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"Watch"];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCMElevation;
  return [NSString stringWithFormat:@"%@ %@", [(ALCMElevation *)&v3 description], [(ALCMElevation *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_elevationAscended), @"elevationAscended"}];
  has = self->_has;
  if (has)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_elevationDescended), @"elevationDescended"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  gradeType = self->_gradeType;
  if (gradeType >= 4)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_gradeType];
  }

  else
  {
    v7 = off_102455B88[gradeType];
  }

  [v3 setObject:v7 forKey:@"gradeType"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *&v4 = self->_verticalSpeed;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"verticalSpeed"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_17;
  }

LABEL_13:
  rawGradeType = self->_rawGradeType;
  if (rawGradeType >= 4)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_rawGradeType];
  }

  else
  {
    v9 = off_102455B88[rawGradeType];
  }

  [v3 setObject:v9 forKey:@"rawGradeType"];
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    source = self->_source;
    if (source)
    {
      if (source == 1)
      {
        v11 = @"Watch";
      }

      else
      {
        v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_source];
      }
    }

    else
    {
      v11 = @"Phone";
    }

    [v3 setObject:v11 forKey:@"source"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_elevationAscended;
  has = self->_has;
  if (has)
  {
    *(a3 + 3) = self->_elevationDescended;
    *(a3 + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_gradeType;
  *(a3 + 32) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a3 + 7) = LODWORD(self->_verticalSpeed);
  *(a3 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_11:
    *(a3 + 6) = self->_source;
    *(a3 + 32) |= 8u;
    return;
  }

LABEL_10:
  *(a3 + 5) = self->_rawGradeType;
  *(a3 + 32) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_elevationAscended;
  has = self->_has;
  if (has)
  {
    *(result + 3) = self->_elevationDescended;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_gradeType;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 7) = LODWORD(self->_verticalSpeed);
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_rawGradeType;
  *(result + 32) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 6) = self->_source;
  *(result + 32) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_elevationAscended != *(a3 + 2))
    {
LABEL_27:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_elevationDescended != *(a3 + 3))
      {
        goto LABEL_27;
      }
    }

    else if (*(a3 + 32))
    {
      goto LABEL_27;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_gradeType != *(a3 + 4))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_27;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 32) & 0x10) == 0 || self->_verticalSpeed != *(a3 + 7))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 32) & 0x10) != 0)
    {
      goto LABEL_27;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_rawGradeType != *(a3 + 5))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
      goto LABEL_27;
    }

    LOBYTE(v5) = (*(a3 + 32) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 32) & 8) == 0 || self->_source != *(a3 + 6))
      {
        goto LABEL_27;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_elevationDescended;
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_gradeType;
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    verticalSpeed = self->_verticalSpeed;
    if (verticalSpeed < 0.0)
    {
      verticalSpeed = -verticalSpeed;
    }

    *v2.i32 = floorf(verticalSpeed + 0.5);
    v8 = (verticalSpeed - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v6 = 2654435761u * *vbslq_s8(v9, v3, v2).i32;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabsf(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_rawGradeType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v5 ^ v6 ^ v10 ^ v11 ^ (2654435761 * self->_elevationAscended);
  }

  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v11 = 2654435761 * self->_source;
  return v4 ^ v5 ^ v6 ^ v10 ^ v11 ^ (2654435761 * self->_elevationAscended);
}

- (void)mergeFrom:(id)a3
{
  self->_elevationAscended = *(a3 + 2);
  v3 = *(a3 + 32);
  if (v3)
  {
    self->_elevationDescended = *(a3 + 3);
    *&self->_has |= 1u;
    v3 = *(a3 + 32);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a3 + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_gradeType = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_verticalSpeed = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 32);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_11:
    self->_source = *(a3 + 6);
    *&self->_has |= 8u;
    return;
  }

LABEL_10:
  self->_rawGradeType = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 32) & 8) != 0)
  {
    goto LABEL_11;
  }
}

@end