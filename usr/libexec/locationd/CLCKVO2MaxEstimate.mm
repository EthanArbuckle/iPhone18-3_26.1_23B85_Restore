@interface CLCKVO2MaxEstimate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEligibleForCalorimetry:(BOOL)a3;
- (void)setHasEligibleForHealthKit:(BOOL)a3;
- (void)setHasEstimatedHRRecoveryParam:(BOOL)a3;
- (void)setHasEstimatedHRResponseParam:(BOOL)a3;
- (void)setHasEstimatedVo2Max:(BOOL)a3;
- (void)setHasFilteredVo2Max:(BOOL)a3;
- (void)setHasHrMax:(BOOL)a3;
- (void)setHasHrMin:(BOOL)a3;
- (void)setHasNumWorkoutsContrToEstimate:(BOOL)a3;
- (void)setHasPlatformSource:(BOOL)a3;
- (void)setHasSessionType:(BOOL)a3;
- (void)setHasSessionVo2Max:(BOOL)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)setHasVariance:(BOOL)a3;
- (void)setHasWorkoutType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLCKVO2MaxEstimate

- (void)setHasStartTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEstimatedVo2Max:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasWorkoutType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasHrMax:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasHrMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasVariance:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFilteredVo2Max:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSessionType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasEligibleForHealthKit:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasEligibleForCalorimetry:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasNumWorkoutsContrToEstimate:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasEstimatedHRResponseParam:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasEstimatedHRRecoveryParam:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSessionVo2Max:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPlatformSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CLCKVO2MaxEstimate;
  return [NSString stringWithFormat:@"%@ %@", [(CLCKVO2MaxEstimate *)&v3 description], [(CLCKVO2MaxEstimate *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_startTime), @"startTime"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_estimatedVo2Max), @"estimatedVo2Max"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_workoutType), @"workoutType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_durationInSeconds), @"durationInSeconds"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_hrMax), @"hrMax"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_hrMin), @"hrMin"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_variance), @"variance"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_filteredVo2Max), @"filteredVo2Max"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_sessionType), @"sessionType"}];
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_eligibleForHealthKit), @"eligibleForHealthKit"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_eligibleForCalorimetry), @"eligibleForCalorimetry"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_numWorkoutsContrToEstimate), @"numWorkoutsContrToEstimate"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_estimatedHRResponseParam), @"estimatedHRResponseParam"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_sessionVo2Max), @"sessionVo2Max"}];
    if ((*&self->_has & 0x800) == 0)
    {
      return v3;
    }

    goto LABEL_17;
  }

LABEL_32:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_estimatedHRRecoveryParam), @"estimatedHRRecoveryParam"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((has & 0x800) != 0)
  {
LABEL_17:
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_platformSource), @"platformSource"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_33;
  }

LABEL_31:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((has & 0x800) == 0)
  {
    return;
  }

LABEL_33:

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(a3 + 9) = *&self->_startTime;
    *(a3 + 54) |= 0x100u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = *&self->_estimatedVo2Max;
  *(a3 + 54) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 25) = self->_workoutType;
  *(a3 + 54) |= 0x2000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 1) = *&self->_durationInSeconds;
  *(a3 + 54) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 6) = *&self->_hrMax;
  *(a3 + 54) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 7) = *&self->_hrMin;
  *(a3 + 54) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 10) = *&self->_variance;
  *(a3 + 54) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 5) = *&self->_filteredVo2Max;
  *(a3 + 54) |= 0x10u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 24) = self->_sessionType;
  *(a3 + 54) |= 0x1000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 105) = self->_eligibleForHealthKit;
  *(a3 + 54) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 104) = self->_eligibleForCalorimetry;
  *(a3 + 54) |= 0x4000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 22) = self->_numWorkoutsContrToEstimate;
  *(a3 + 54) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 3) = *&self->_estimatedHRResponseParam;
  *(a3 + 54) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 2) = *&self->_estimatedHRRecoveryParam;
  *(a3 + 54) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x800) == 0)
    {
      return;
    }

LABEL_33:
    *(a3 + 23) = self->_platformSource;
    *(a3 + 54) |= 0x800u;
    return;
  }

LABEL_32:
  *(a3 + 8) = *&self->_sessionVo2Max;
  *(a3 + 54) |= 0x80u;
  if ((*&self->_has & 0x800) != 0)
  {
    goto LABEL_33;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 9) = *&self->_startTime;
    *(result + 54) |= 0x100u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = *&self->_estimatedVo2Max;
  *(result + 54) |= 8u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 25) = self->_workoutType;
  *(result + 54) |= 0x2000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = *&self->_durationInSeconds;
  *(result + 54) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 6) = *&self->_hrMax;
  *(result + 54) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 7) = *&self->_hrMin;
  *(result + 54) |= 0x40u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 10) = *&self->_variance;
  *(result + 54) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 5) = *&self->_filteredVo2Max;
  *(result + 54) |= 0x10u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 24) = self->_sessionType;
  *(result + 54) |= 0x1000u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_11:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 105) = self->_eligibleForHealthKit;
  *(result + 54) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_12:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 104) = self->_eligibleForCalorimetry;
  *(result + 54) |= 0x4000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_13:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 22) = self->_numWorkoutsContrToEstimate;
  *(result + 54) |= 0x400u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 3) = *&self->_estimatedHRResponseParam;
  *(result + 54) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 2) = *&self->_estimatedHRRecoveryParam;
  *(result + 54) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_33:
  *(result + 8) = *&self->_sessionVo2Max;
  *(result + 54) |= 0x80u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_17:
  *(result + 23) = self->_platformSource;
  *(result + 54) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 54);
  if ((has & 0x100) != 0)
  {
    if ((*(a3 + 54) & 0x100) == 0 || self->_startTime != *(a3 + 9))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x100) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_estimatedVo2Max != *(a3 + 4))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(a3 + 54) & 0x2000) == 0 || self->_workoutType != *(a3 + 25))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x2000) != 0)
  {
    goto LABEL_87;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_durationInSeconds != *(a3 + 1))
    {
      goto LABEL_87;
    }
  }

  else if (v7)
  {
    goto LABEL_87;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_hrMax != *(a3 + 6))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_hrMin != *(a3 + 7))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 54) & 0x200) == 0 || self->_variance != *(a3 + 10))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x200) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_filteredVo2Max != *(a3 + 5))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(a3 + 54) & 0x1000) == 0 || self->_sessionType != *(a3 + 24))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x1000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(a3 + 54) & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    if (self->_eligibleForHealthKit)
    {
      if ((*(a3 + 105) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (*(a3 + 105))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x8000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(a3 + 54) & 0x4000) != 0)
    {
      if (self->_eligibleForCalorimetry)
      {
        if ((*(a3 + 104) & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else if (*(a3 + 104))
      {
        goto LABEL_87;
      }

      goto LABEL_51;
    }

LABEL_87:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 54) & 0x4000) != 0)
  {
    goto LABEL_87;
  }

LABEL_51:
  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 54) & 0x400) == 0 || self->_numWorkoutsContrToEstimate != *(a3 + 22))
    {
      goto LABEL_87;
    }
  }

  else if ((*(a3 + 54) & 0x400) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_estimatedHRResponseParam != *(a3 + 3))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_estimatedHRRecoveryParam != *(a3 + 2))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_87;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_sessionVo2Max != *(a3 + 8))
    {
      goto LABEL_87;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_87;
  }

  LOBYTE(v5) = (v7 & 0x800) == 0;
  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 54) & 0x800) == 0 || self->_platformSource != *(a3 + 23))
    {
      goto LABEL_87;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    startTime = self->_startTime;
    if (startTime < 0.0)
    {
      startTime = -startTime;
    }

    *v2.i64 = floor(startTime + 0.5);
    v7 = (startTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((has & 8) != 0)
  {
    estimatedVo2Max = self->_estimatedVo2Max;
    if (estimatedVo2Max < 0.0)
    {
      estimatedVo2Max = -estimatedVo2Max;
    }

    *v2.i64 = floor(estimatedVo2Max + 0.5);
    v11 = (estimatedVo2Max - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 0x2000) != 0)
  {
    v13 = 2654435761 * self->_workoutType;
    if (has)
    {
      goto LABEL_19;
    }

LABEL_24:
    v17 = 0;
    goto LABEL_25;
  }

  v13 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  durationInSeconds = self->_durationInSeconds;
  if (durationInSeconds < 0.0)
  {
    durationInSeconds = -durationInSeconds;
  }

  *v2.i64 = floor(durationInSeconds + 0.5);
  v15 = (durationInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
  v17 = 2654435761u * *v2.i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_25:
  if ((has & 0x20) != 0)
  {
    hrMax = self->_hrMax;
    if (hrMax < 0.0)
    {
      hrMax = -hrMax;
    }

    *v2.i64 = floor(hrMax + 0.5);
    v20 = (hrMax - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v21), v3, v2);
    v18 = 2654435761u * *v2.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x40) != 0)
  {
    hrMin = self->_hrMin;
    if (hrMin < 0.0)
    {
      hrMin = -hrMin;
    }

    *v2.i64 = floor(hrMin + 0.5);
    v24 = (hrMin - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v22 = 2654435761u * *v2.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    variance = self->_variance;
    if (variance < 0.0)
    {
      variance = -variance;
    }

    *v2.i64 = floor(variance + 0.5);
    v28 = (variance - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
    v26 = 2654435761u * *v2.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x10) != 0)
  {
    filteredVo2Max = self->_filteredVo2Max;
    if (filteredVo2Max < 0.0)
    {
      filteredVo2Max = -filteredVo2Max;
    }

    *v2.i64 = floor(filteredVo2Max + 0.5);
    v32 = (filteredVo2Max - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v33), v3, v2);
    v30 = 2654435761u * *v2.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v34 = 2654435761 * self->_sessionType;
    if ((*&self->_has & 0x8000) != 0)
    {
LABEL_61:
      v35 = 2654435761 * self->_eligibleForHealthKit;
      if ((*&self->_has & 0x4000) != 0)
      {
        goto LABEL_62;
      }

      goto LABEL_70;
    }
  }

  else
  {
    v34 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_61;
    }
  }

  v35 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_62:
    v36 = 2654435761 * self->_eligibleForCalorimetry;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_63;
    }

LABEL_71:
    v37 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_64;
    }

LABEL_72:
    v41 = 0;
    goto LABEL_73;
  }

LABEL_70:
  v36 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_71;
  }

LABEL_63:
  v37 = 2654435761 * self->_numWorkoutsContrToEstimate;
  if ((has & 4) == 0)
  {
    goto LABEL_72;
  }

LABEL_64:
  estimatedHRResponseParam = self->_estimatedHRResponseParam;
  if (estimatedHRResponseParam < 0.0)
  {
    estimatedHRResponseParam = -estimatedHRResponseParam;
  }

  *v2.i64 = floor(estimatedHRResponseParam + 0.5);
  v39 = (estimatedHRResponseParam - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
  v41 = 2654435761u * *v2.i64;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabs(v39);
  }

LABEL_73:
  if ((has & 2) != 0)
  {
    estimatedHRRecoveryParam = self->_estimatedHRRecoveryParam;
    if (estimatedHRRecoveryParam < 0.0)
    {
      estimatedHRRecoveryParam = -estimatedHRRecoveryParam;
    }

    *v2.i64 = floor(estimatedHRRecoveryParam + 0.5);
    v44 = (estimatedHRRecoveryParam - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v45.f64[0] = NAN;
    v45.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v45), v3, v2);
    v42 = 2654435761u * *v2.i64;
    if (v44 >= 0.0)
    {
      if (v44 > 0.0)
      {
        v42 += v44;
      }
    }

    else
    {
      v42 -= fabs(v44);
    }
  }

  else
  {
    v42 = 0;
  }

  if ((has & 0x80) != 0)
  {
    sessionVo2Max = self->_sessionVo2Max;
    if (sessionVo2Max < 0.0)
    {
      sessionVo2Max = -sessionVo2Max;
    }

    *v2.i64 = floor(sessionVo2Max + 0.5);
    v48 = (sessionVo2Max - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v46 = 2654435761u * *vbslq_s8(vnegq_f64(v49), v3, v2).i64;
    if (v48 >= 0.0)
    {
      if (v48 > 0.0)
      {
        v46 += v48;
      }
    }

    else
    {
      v46 -= fabs(v48);
    }
  }

  else
  {
    v46 = 0;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v50 = 2654435761 * self->_platformSource;
  }

  else
  {
    v50 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v18 ^ v22 ^ v26 ^ v30 ^ v34 ^ v35 ^ v36 ^ v37 ^ v41 ^ v42 ^ v46 ^ v50;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 54);
  if ((v3 & 0x100) != 0)
  {
    self->_startTime = *(a3 + 9);
    *&self->_has |= 0x100u;
    v3 = *(a3 + 54);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_estimatedVo2Max = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 54);
  if ((v3 & 0x2000) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_workoutType = *(a3 + 25);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 54);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_durationInSeconds = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 54);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_hrMax = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 54);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_hrMin = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 54);
  if ((v3 & 0x200) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_variance = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 54);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_filteredVo2Max = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 54);
  if ((v3 & 0x1000) == 0)
  {
LABEL_10:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_sessionType = *(a3 + 24);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 54);
  if ((v3 & 0x8000) == 0)
  {
LABEL_11:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_eligibleForHealthKit = *(a3 + 105);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 54);
  if ((v3 & 0x4000) == 0)
  {
LABEL_12:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_eligibleForCalorimetry = *(a3 + 104);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 54);
  if ((v3 & 0x400) == 0)
  {
LABEL_13:
    if ((v3 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_numWorkoutsContrToEstimate = *(a3 + 22);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 54);
  if ((v3 & 4) == 0)
  {
LABEL_14:
    if ((v3 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_estimatedHRResponseParam = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 54);
  if ((v3 & 2) == 0)
  {
LABEL_15:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_estimatedHRRecoveryParam = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 54);
  if ((v3 & 0x80) == 0)
  {
LABEL_16:
    if ((v3 & 0x800) == 0)
    {
      return;
    }

LABEL_33:
    self->_platformSource = *(a3 + 23);
    *&self->_has |= 0x800u;
    return;
  }

LABEL_32:
  self->_sessionVo2Max = *(a3 + 8);
  *&self->_has |= 0x80u;
  if ((*(a3 + 54) & 0x800) != 0)
  {
    goto LABEL_33;
  }
}

@end