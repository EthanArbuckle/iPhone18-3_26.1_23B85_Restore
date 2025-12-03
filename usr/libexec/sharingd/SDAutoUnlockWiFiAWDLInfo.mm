@interface SDAutoUnlockWiFiAWDLInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDiscoveryMetric:(BOOL)metric;
- (void)setHasMasterChannel:(BOOL)channel;
- (void)setHasPreferredChannel:(BOOL)channel;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockWiFiAWDLInfo

- (void)setHasDiscoveryMetric:(BOOL)metric
{
  if (metric)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMasterChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPreferredChannel:(BOOL)channel
{
  if (channel)
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
  v7.receiver = self;
  v7.super_class = SDAutoUnlockWiFiAWDLInfo;
  v3 = [(SDAutoUnlockWiFiAWDLInfo *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockWiFiAWDLInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  macAddress = self->_macAddress;
  if (macAddress)
  {
    [v3 setObject:macAddress forKey:@"macAddress"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_discoveryMetric];
    [v4 setObject:v10 forKey:@"discoveryMetric"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_masterChannel];
  [v4 setObject:v11 forKey:@"masterChannel"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v12 = [NSNumber numberWithUnsignedInt:self->_preferredChannel];
  [v4 setObject:v12 forKey:@"preferredChannel"];

  if (*&self->_has)
  {
LABEL_7:
    v7 = [NSNumber numberWithUnsignedInt:self->_channelFlags];
    [v4 setObject:v7 forKey:@"channelFlags"];
  }

LABEL_8:
  extraInfoData = self->_extraInfoData;
  if (extraInfoData)
  {
    [v4 setObject:extraInfoData forKey:@"extraInfoData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_macAddress)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    discoveryMetric = self->_discoveryMetric;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  masterChannel = self->_masterChannel;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  preferredChannel = self->_preferredChannel;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if (*&self->_has)
  {
LABEL_7:
    channelFlags = self->_channelFlags;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

LABEL_8:
  if (self->_extraInfoData)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_macAddress)
  {
    [toCopy setMacAddress:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 3) = self->_discoveryMetric;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 8) = self->_masterChannel;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 9) = self->_preferredChannel;
  *(toCopy + 40) |= 8u;
  if (*&self->_has)
  {
LABEL_7:
    *(toCopy + 2) = self->_channelFlags;
    *(toCopy + 40) |= 1u;
  }

LABEL_8:
  if (self->_extraInfoData)
  {
    [v6 setExtraInfoData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_macAddress copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 3) = self->_discoveryMetric;
    *(v5 + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 9) = self->_preferredChannel;
      *(v5 + 40) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_masterChannel;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 2) = self->_channelFlags;
    *(v5 + 40) |= 1u;
  }

LABEL_6:
  v9 = [(NSData *)self->_extraInfoData copyWithZone:zone];
  v10 = v5[2];
  v5[2] = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  macAddress = self->_macAddress;
  if (macAddress | *(equalCopy + 3))
  {
    if (![(NSData *)macAddress isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v6 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_discoveryMetric != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_masterChannel != *(equalCopy + 8))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_preferredChannel != *(equalCopy + 9))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_channelFlags != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_26;
  }

  extraInfoData = self->_extraInfoData;
  if (extraInfoData | *(equalCopy + 2))
  {
    v8 = [(NSData *)extraInfoData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_macAddress hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_discoveryMetric;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_masterChannel;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSData *)self->_extraInfoData hash];
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_preferredChannel;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_channelFlags;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSData *)self->_extraInfoData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SDAutoUnlockWiFiAWDLInfo *)self setMacAddress:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_discoveryMetric = fromCopy[3];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((fromCopy[10] & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_masterChannel = fromCopy[8];
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_preferredChannel = fromCopy[9];
  *&self->_has |= 8u;
  if (fromCopy[10])
  {
LABEL_7:
    self->_channelFlags = fromCopy[2];
    *&self->_has |= 1u;
  }

LABEL_8:
  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockWiFiAWDLInfo *)self setExtraInfoData:?];
    fromCopy = v6;
  }
}

@end