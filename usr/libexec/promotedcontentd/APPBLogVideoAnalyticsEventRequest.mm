@interface APPBLogVideoAnalyticsEventRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)videoStateAsString:(int)string;
- (int)StringAsVideoState:(id)state;
- (int)videoState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventSequence:(BOOL)sequence;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTotalDuration:(BOOL)duration;
- (void)setHasVideoState:(BOOL)state;
- (void)setHasVisiblePercentage:(BOOL)percentage;
- (void)setHasVolume:(BOOL)volume;
- (void)writeTo:(id)to;
@end

@implementation APPBLogVideoAnalyticsEventRequest

+ (id)options
{
  if (qword_1004E6A80 != -1)
  {
    sub_100393F90();
  }

  v3 = qword_1004E6A78;

  return v3;
}

- (int)videoState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_videoState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVideoState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)videoStateAsString:(int)string
{
  if (string >= 0x11)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D1E0 + string);
  }

  return v4;
}

- (int)StringAsVideoState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Loaded"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Unloaded"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Started"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"Completed"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"Paused"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"Resumed"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"Skipped"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"Muted"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"Unmuted"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"FullScreen"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"ExitFullScreen"])
  {
    v4 = 10;
  }

  else if ([stateCopy isEqualToString:@"Touched"])
  {
    v4 = 11;
  }

  else if ([stateCopy isEqualToString:@"ProgressFirstQuartile"])
  {
    v4 = 12;
  }

  else if ([stateCopy isEqualToString:@"ProgressMidpoint"])
  {
    v4 = 13;
  }

  else if ([stateCopy isEqualToString:@"ProgressThirdQuartile"])
  {
    v4 = 14;
  }

  else if ([stateCopy isEqualToString:@"VisibilityChanged"])
  {
    v4 = 15;
  }

  else if ([stateCopy isEqualToString:@"PlaybackFailed"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTotalDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVisiblePercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEventSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasVolume:(BOOL)volume
{
  if (volume)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogVideoAnalyticsEventRequest;
  v3 = [(APPBLogVideoAnalyticsEventRequest *)&v7 description];
  dictionaryRepresentation = [(APPBLogVideoAnalyticsEventRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  metaData = self->_metaData;
  if (metaData)
  {
    dictionaryRepresentation = [(APPBLogMetaData *)metaData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"metaData"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    videoState = self->_videoState;
    if (videoState >= 0x11)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_videoState];
    }

    else
    {
      v10 = *(&off_10047D1E0 + videoState);
    }

    [v3 setObject:v10 forKey:@"videoState"];

    has = self->_has;
  }

  if (has)
  {
    v13 = [NSNumber numberWithDouble:self->_currentPlaybackTime];
    [v3 setObject:v13 forKey:@"currentPlaybackTime"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_12;
  }

  v14 = [NSNumber numberWithDouble:self->_totalDuration];
  [v3 setObject:v14 forKey:@"totalDuration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [NSNumber numberWithDouble:self->_visiblePercentage];
  [v3 setObject:v15 forKey:@"visiblePercentage"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [NSNumber numberWithDouble:self->_timestamp];
  [v3 setObject:v16 forKey:@"timestamp"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v17 = [NSNumber numberWithInt:self->_eventSequence];
  [v3 setObject:v17 forKey:@"eventSequence"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_16:
    *&v4 = self->_volume;
    v11 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v11 forKey:@"volume"];
  }

LABEL_17:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_metaData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_13:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_metaData)
  {
    [toCopy setMetaData:?];
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 16) = self->_videoState;
    *(toCopy + 72) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 1) = *&self->_currentPlaybackTime;
  *(toCopy + 72) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(toCopy + 3) = *&self->_totalDuration;
  *(toCopy + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(toCopy + 4) = *&self->_visiblePercentage;
  *(toCopy + 72) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 2) = *&self->_timestamp;
  *(toCopy + 72) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  *(toCopy + 12) = self->_eventSequence;
  *(toCopy + 72) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_12:
    *(toCopy + 17) = LODWORD(self->_volume);
    *(toCopy + 72) |= 0x40u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBLogMetaData *)self->_metaData copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 16) = self->_videoState;
    *(v5 + 72) |= 0x20u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = *&self->_currentPlaybackTime;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5[3] = *&self->_totalDuration;
  *(v5 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5[4] = *&self->_visiblePercentage;
  *(v5 + 72) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v5 + 12) = self->_eventSequence;
    *(v5 + 72) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      return v5;
    }

    goto LABEL_8;
  }

LABEL_14:
  v5[2] = *&self->_timestamp;
  *(v5 + 72) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    *(v5 + 17) = LODWORD(self->_volume);
    *(v5 + 72) |= 0x40u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  metaData = self->_metaData;
  if (metaData | *(equalCopy + 7))
  {
    if (![(APPBLogMetaData *)metaData isEqual:?])
    {
      goto LABEL_40;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 5))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_40;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 72) & 0x20) == 0 || self->_videoState != *(equalCopy + 16))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 72) & 0x20) != 0)
  {
LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_currentPlaybackTime != *(equalCopy + 1))
    {
      goto LABEL_40;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_totalDuration != *(equalCopy + 3))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_visiblePercentage != *(equalCopy + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 72) & 0x10) == 0 || self->_eventSequence != *(equalCopy + 12))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 72) & 0x10) != 0)
  {
    goto LABEL_40;
  }

  v7 = (*(equalCopy + 72) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 72) & 0x40) == 0 || self->_volume != *(equalCopy + 17))
    {
      goto LABEL_40;
    }

    v7 = 1;
  }

LABEL_41:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(APPBLogMetaData *)self->_metaData hash];
  v4 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v7 = 2654435761 * self->_videoState;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  currentPlaybackTime = self->_currentPlaybackTime;
  if (currentPlaybackTime < 0.0)
  {
    currentPlaybackTime = -currentPlaybackTime;
  }

  *v5.i64 = floor(currentPlaybackTime + 0.5);
  v9 = (currentPlaybackTime - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
  v11 = 2654435761u * *v5.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    totalDuration = self->_totalDuration;
    if (totalDuration < 0.0)
    {
      totalDuration = -totalDuration;
    }

    *v5.i64 = floor(totalDuration + 0.5);
    v14 = (totalDuration - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v15), v6, v5);
    v12 = 2654435761u * *v5.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    visiblePercentage = self->_visiblePercentage;
    if (visiblePercentage < 0.0)
    {
      visiblePercentage = -visiblePercentage;
    }

    *v5.i64 = floor(visiblePercentage + 0.5);
    v18 = (visiblePercentage - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v19), v6, v5);
    v16 = 2654435761u * *v5.i64;
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

  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v5.i64 = floor(timestamp + 0.5);
    v22 = (timestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v23), v6, v5);
    v20 = 2654435761u * *v5.i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v24 = 2654435761 * self->_eventSequence;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    v28 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v24 ^ v28;
  }

  v24 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  volume = self->_volume;
  if (volume < 0.0)
  {
    volume = -volume;
  }

  *v5.i32 = floorf(volume + 0.5);
  v26 = (volume - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v28 = 2654435761u * *vbslq_s8(v27, v6, v5).i32;
  if (v26 >= 0.0)
  {
    if (v26 > 0.0)
    {
      v28 += v26;
    }
  }

  else
  {
    v28 -= fabsf(v26);
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v24 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  metaData = self->_metaData;
  v6 = *(fromCopy + 7);
  v8 = fromCopy;
  if (metaData)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBLogMetaData *)metaData mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(APPBLogVideoAnalyticsEventRequest *)self setMetaData:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 5))
  {
    [(APPBLogVideoAnalyticsEventRequest *)self setBundleID:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 72);
  if ((v7 & 0x20) != 0)
  {
    self->_videoState = *(fromCopy + 16);
    *&self->_has |= 0x20u;
    v7 = *(fromCopy + 72);
    if ((v7 & 1) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((*(fromCopy + 72) & 1) == 0)
  {
    goto LABEL_11;
  }

  self->_currentPlaybackTime = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 72);
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_totalDuration = *(fromCopy + 3);
  *&self->_has |= 4u;
  v7 = *(fromCopy + 72);
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_visiblePercentage = *(fromCopy + 4);
  *&self->_has |= 8u;
  v7 = *(fromCopy + 72);
  if ((v7 & 2) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_timestamp = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x10) == 0)
  {
LABEL_15:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_25:
  self->_eventSequence = *(fromCopy + 12);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 72) & 0x40) != 0)
  {
LABEL_16:
    self->_volume = *(fromCopy + 17);
    *&self->_has |= 0x40u;
  }

LABEL_17:

  _objc_release_x1();
}

@end