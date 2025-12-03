@interface DYNAMICRATSELECTIONDynamicRatSelectionMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DYNAMICRATSELECTIONDynamicRatSelectionMetrics

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYNAMICRATSELECTIONDynamicRatSelectionMetrics;
  return [NSString stringWithFormat:@"%@ %@", [(DYNAMICRATSELECTIONDynamicRatSelectionMetrics *)&v3 description], [(DYNAMICRATSELECTIONDynamicRatSelectionMetrics *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    ratType = self->_ratType;
    if (ratType >= 4)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_ratType];
    }

    else
    {
      v6 = off_10023DAC0[ratType];
    }

    [v3 setObject:v6 forKey:@"ratType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    bbChipset = self->_bbChipset;
    if (bbChipset >= 3)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_bbChipset];
    }

    else
    {
      v8 = off_10023DAE0[bbChipset];
    }

    [v3 setObject:v8 forKey:@"bbChipset"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_mcc), @"mcc"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_13;
  }

  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_mnc), @"mnc"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_bandwidthInMhz), @"bandwidthInMhz"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_downlinkThroughputInMbps), @"downlinkThroughputInMbps"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_throughputCount), @"throughputCount"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_18;
  }

LABEL_24:
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_mmWavePresent), @"mmWavePresent"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((has & 4) != 0)
  {
LABEL_18:
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    ratType = self->_ratType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  bbChipset = self->_bbChipset;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  bandwidthInMhz = self->_bandwidthInMhz;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  downlinkThroughputInMbps = self->_downlinkThroughputInMbps;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    throughputCount = self->_throughputCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  mmWavePresent = self->_mmWavePresent;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_19:
  count = self->_count;

  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(result + 8) = self->_ratType;
    *(result + 22) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_bbChipset;
  *(result + 22) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 6) = self->_mcc;
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_mnc;
  *(result + 22) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 2) = self->_bandwidthInMhz;
  *(result + 22) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 5) = self->_downlinkThroughputInMbps;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 40) = self->_mmWavePresent;
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 9) = self->_throughputCount;
  *(result + 22) |= 0x80u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 4) = self->_count;
  *(result + 22) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 22);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_ratType != *(equal + 8))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_bbChipset != *(equal + 3))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_mcc != *(equal + 6))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_mnc != *(equal + 7))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_bandwidthInMhz != *(equal + 2))
    {
      goto LABEL_48;
    }
  }

  else if (v7)
  {
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_downlinkThroughputInMbps != *(equal + 5))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(equal + 22) & 0x100) == 0)
    {
      goto LABEL_34;
    }

LABEL_48:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 22) & 0x100) == 0)
  {
    goto LABEL_48;
  }

  v8 = *(equal + 40);
  if (self->_mmWavePresent)
  {
    if ((*(equal + 40) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_34;
  }

  if (*(equal + 40))
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_throughputCount != *(equal + 9))
    {
      goto LABEL_48;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_48;
  }

  LOBYTE(v5) = (v7 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_count != *(equal + 4))
    {
      goto LABEL_48;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v3 = 2654435761 * self->_ratType;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_bbChipset;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_mcc;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_mnc;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if (has)
  {
LABEL_6:
    v7 = 2654435761 * self->_bandwidthInMhz;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_downlinkThroughputInMbps;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_mmWavePresent;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_throughputCount;
  if ((has & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_count;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

@end