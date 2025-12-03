@interface APPBLogImpressionRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addMetric:(id)metric;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInsufficientPlaybackTime:(BOOL)time;
- (void)setHasScreenSaverActive:(BOOL)active;
- (void)setHasType:(BOOL)type;
- (void)setHasVisuallyEngaged:(BOOL)engaged;
- (void)writeTo:(id)to;
@end

@implementation APPBLogImpressionRequest

+ (id)options
{
  if (qword_1004E6C60 != -1)
  {
    sub_100394488();
  }

  v3 = qword_1004E6C58;

  return v3;
}

- (void)addMetric:(id)metric
{
  metricCopy = metric;
  metrics = self->_metrics;
  v8 = metricCopy;
  if (!metrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_metrics;
    self->_metrics = v6;

    metricCopy = v8;
    metrics = self->_metrics;
  }

  [(NSMutableArray *)metrics addObject:metricCopy];
}

- (void)setHasScreenSaverActive:(BOOL)active
{
  if (active)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasInsufficientPlaybackTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVisuallyEngaged:(BOOL)engaged
{
  if (engaged)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)typeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DE30 + (string - 1));
  }

  return v4;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"contentRequest"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"viewable"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"viewable50Percent"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogImpressionRequest;
  v3 = [(APPBLogImpressionRequest *)&v7 description];
  dictionaryRepresentation = [(APPBLogImpressionRequest *)self dictionaryRepresentation];
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

  if ([(NSMutableArray *)self->_metrics count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_metrics, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = self->_metrics;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"metric"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v14 = [NSNumber numberWithBool:self->_screenSaverActive];
    [v3 setObject:v14 forKey:@"screenSaverActive"];
  }

  mediaContentHash = self->_mediaContentHash;
  if (mediaContentHash)
  {
    [v3 setObject:mediaContentHash forKey:@"mediaContentHash"];
  }

  has = self->_has;
  if (has)
  {
    *&v6 = self->_playbackTime;
    v17 = [NSNumber numberWithFloat:v6];
    [v3 setObject:v17 forKey:@"playbackTime"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_18:
      if ((has & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_18;
  }

  v18 = [NSNumber numberWithBool:self->_insufficientPlaybackTime];
  [v3 setObject:v18 forKey:@"insufficientPlaybackTime"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_19:
    if ((has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_23:
  v19 = [NSNumber numberWithBool:self->_visuallyEngaged];
  [v3 setObject:v19 forKey:@"visuallyEngaged"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v20 = self->_type - 1;
  if (v20 >= 3)
  {
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v21 = *(&off_10047DE30 + v20);
  }

  [v3 setObject:v21 forKey:@"type"];

LABEL_28:
  contextString = self->_contextString;
  if (contextString)
  {
    [v3 setObject:contextString forKey:@"contextString"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_metaData)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_metrics;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_mediaContentHash)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_16:
      if ((has & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    PBDataWriterWriteInt32Field();
  }

LABEL_19:
  if (self->_contextString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_metaData)
  {
    [toCopy setMetaData:?];
  }

  if ([(APPBLogImpressionRequest *)self metricsCount])
  {
    [toCopy clearMetrics];
    metricsCount = [(APPBLogImpressionRequest *)self metricsCount];
    if (metricsCount)
    {
      v5 = metricsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBLogImpressionRequest *)self metricAtIndex:i];
        [toCopy addMetric:v7];
      }
    }
  }

  v8 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[49] = self->_screenSaverActive;
    toCopy[52] |= 8u;
  }

  if (self->_mediaContentHash)
  {
    [toCopy setMediaContentHash:?];
    v8 = toCopy;
  }

  has = self->_has;
  if (has)
  {
    *(v8 + 10) = LODWORD(self->_playbackTime);
    v8[52] |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  v8[48] = self->_insufficientPlaybackTime;
  v8[52] |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  v8[50] = self->_visuallyEngaged;
  v8[52] |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    *(v8 + 11) = self->_type;
    v8[52] |= 2u;
  }

LABEL_16:
  if (self->_contextString)
  {
    [toCopy setContextString:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBLogMetaData *)self->_metaData copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_metrics;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v5 addMetric:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 49) = self->_screenSaverActive;
    *(v5 + 52) |= 8u;
  }

  v14 = [(NSData *)self->_mediaContentHash copyWithZone:zone, v20];
  v15 = v5[2];
  v5[2] = v14;

  has = self->_has;
  if (has)
  {
    *(v5 + 10) = LODWORD(self->_playbackTime);
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_12:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v5 + 50) = self->_visuallyEngaged;
      *(v5 + 52) |= 0x10u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 48) = self->_insufficientPlaybackTime;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 2) != 0)
  {
LABEL_14:
    *(v5 + 11) = self->_type;
    *(v5 + 52) |= 2u;
  }

LABEL_15:
  v17 = [(NSString *)self->_contextString copyWithZone:zone];
  v18 = v5[1];
  v5[1] = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  metaData = self->_metaData;
  if (metaData | *(equalCopy + 3))
  {
    if (![(APPBLogMetaData *)metaData isEqual:?])
    {
      goto LABEL_44;
    }
  }

  metrics = self->_metrics;
  if (metrics | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)metrics isEqual:?])
    {
      goto LABEL_44;
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0)
    {
      goto LABEL_44;
    }

    if (self->_screenSaverActive)
    {
      if ((*(equalCopy + 49) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(equalCopy + 49))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_44;
  }

  mediaContentHash = self->_mediaContentHash;
  if (mediaContentHash | *(equalCopy + 2))
  {
    if (![(NSData *)mediaContentHash isEqual:?])
    {
      goto LABEL_44;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_playbackTime != *(equalCopy + 10))
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_44;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_44;
    }

    if (self->_insufficientPlaybackTime)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((has & 0x10) == 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    v10 = 0;
    goto LABEL_45;
  }

  if ((*(equalCopy + 52) & 0x10) == 0)
  {
    goto LABEL_44;
  }

  if (self->_visuallyEngaged)
  {
    if ((*(equalCopy + 50) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 50))
  {
    goto LABEL_44;
  }

LABEL_24:
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_type != *(equalCopy + 11))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_44;
  }

  contextString = self->_contextString;
  if (contextString | *(equalCopy + 1))
  {
    v10 = [(NSString *)contextString isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_45:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(APPBLogMetaData *)self->_metaData hash];
  v4 = [(NSMutableArray *)self->_metrics hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_screenSaverActive;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_mediaContentHash hash];
  if (*&self->_has)
  {
    playbackTime = self->_playbackTime;
    if (playbackTime < 0.0)
    {
      playbackTime = -playbackTime;
    }

    *v7.i32 = floorf(playbackTime + 0.5);
    v11 = (playbackTime - *v7.i32) * 1.8447e19;
    *v8.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v9 = 2654435761u * *vbslq_s8(v12, v8, v7).i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) == 0)
  {
    v13 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v14 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13 ^ v14 ^ v15 ^ [(NSString *)self->_contextString hash];
  }

  v13 = 2654435761 * self->_insufficientPlaybackTime;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v14 = 2654435761 * self->_visuallyEngaged;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v15 = 2654435761 * self->_type;
  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13 ^ v14 ^ v15 ^ [(NSString *)self->_contextString hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  metaData = self->_metaData;
  v6 = *(fromCopy + 3);
  if (metaData)
  {
    if (v6)
    {
      [(APPBLogMetaData *)metaData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBLogImpressionRequest *)self setMetaData:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(APPBLogImpressionRequest *)self addMetric:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if ((*(fromCopy + 52) & 8) != 0)
  {
    self->_screenSaverActive = *(fromCopy + 49);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 2))
  {
    [(APPBLogImpressionRequest *)self setMediaContentHash:?];
  }

  v12 = *(fromCopy + 52);
  if (v12)
  {
    self->_playbackTime = *(fromCopy + 10);
    *&self->_has |= 1u;
    v12 = *(fromCopy + 52);
    if ((v12 & 4) == 0)
    {
LABEL_19:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else if ((*(fromCopy + 52) & 4) == 0)
  {
    goto LABEL_19;
  }

  self->_insufficientPlaybackTime = *(fromCopy + 48);
  *&self->_has |= 4u;
  v12 = *(fromCopy + 52);
  if ((v12 & 0x10) == 0)
  {
LABEL_20:
    if ((v12 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_27:
  self->_visuallyEngaged = *(fromCopy + 50);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 52) & 2) != 0)
  {
LABEL_21:
    self->_type = *(fromCopy + 11);
    *&self->_has |= 2u;
  }

LABEL_22:
  if (*(fromCopy + 1))
  {
    [(APPBLogImpressionRequest *)self setContextString:?];
  }
}

@end