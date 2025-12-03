@interface APPBInstallAttribution
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCampaignId:(BOOL)id;
- (void)setHasSourceAppAdamId:(BOOL)id;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation APPBInstallAttribution

- (void)setHasCampaignId:(BOOL)id
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

- (void)setHasSourceAppAdamId:(BOOL)id
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

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
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
  v7.super_class = APPBInstallAttribution;
  v3 = [(APPBInstallAttribution *)&v7 description];
  dictionaryRepresentation = [(APPBInstallAttribution *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  adNetworkId = self->_adNetworkId;
  if (adNetworkId)
  {
    [v3 setObject:adNetworkId forKey:@"adNetworkId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_campaignId];
    [v4 setObject:v6 forKey:@"campaignId"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKey:@"version"];
  }

  attributionSignature = self->_attributionSignature;
  if (attributionSignature)
  {
    [v4 setObject:attributionSignature forKey:@"attributionSignature"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v4 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [NSNumber numberWithUnsignedLongLong:self->_adamId];
    [v4 setObject:v13 forKey:@"adamId"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  v14 = [NSNumber numberWithUnsignedLongLong:self->_sourceAppAdamId];
  [v4 setObject:v14 forKey:@"sourceAppAdamId"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    v11 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v4 setObject:v11 forKey:@"timestamp"];
  }

LABEL_15:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_adNetworkId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_attributionSignature)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteUint64Field();
  toCopy = v6;
  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_adNetworkId)
  {
    [toCopy setAdNetworkId:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_campaignId;
    *(toCopy + 72) |= 2u;
  }

  if (self->_version)
  {
    [v6 setVersion:?];
    toCopy = v6;
  }

  if (self->_attributionSignature)
  {
    [v6 setAttributionSignature:?];
    toCopy = v6;
  }

  if (self->_uuid)
  {
    [v6 setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_adamId;
    *(toCopy + 72) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 3) = self->_sourceAppAdamId;
  *(toCopy + 72) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    *(toCopy + 4) = self->_timestamp;
    *(toCopy + 72) |= 8u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_adNetworkId copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_campaignId;
    *(v5 + 72) |= 2u;
  }

  v8 = [(NSString *)self->_version copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSString *)self->_attributionSignature copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_uuid copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5[3] = self->_sourceAppAdamId;
    *(v5 + 72) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

  v5[1] = self->_adamId;
  *(v5 + 72) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    v5[4] = self->_timestamp;
    *(v5 + 72) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  adNetworkId = self->_adNetworkId;
  if (adNetworkId | *(equalCopy + 5))
  {
    if (![(NSString *)adNetworkId isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_campaignId != *(equalCopy + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  version = self->_version;
  if (version | *(equalCopy + 8) && ![(NSString *)version isEqual:?])
  {
    goto LABEL_29;
  }

  attributionSignature = self->_attributionSignature;
  if (attributionSignature | *(equalCopy + 6))
  {
    if (![(NSString *)attributionSignature isEqual:?])
    {
      goto LABEL_29;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 7))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_adamId != *(equalCopy + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_sourceAppAdamId != *(equalCopy + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_29;
  }

  v9 = (*(equalCopy + 72) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_29;
    }

    v9 = 1;
  }

LABEL_30:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_adNetworkId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761u * self->_campaignId;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_version hash];
  v6 = [(NSString *)self->_attributionSignature hash];
  v7 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 1) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761u * self->_adamId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = 2654435761u * self->_sourceAppAdamId;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = 2654435761u * self->_timestamp;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (fromCopy[5])
  {
    [(APPBInstallAttribution *)self setAdNetworkId:?];
    fromCopy = v6;
  }

  if ((fromCopy[9] & 2) != 0)
  {
    self->_campaignId = fromCopy[2];
    *&self->_has |= 2u;
  }

  if (fromCopy[8])
  {
    [(APPBInstallAttribution *)self setVersion:?];
    fromCopy = v6;
  }

  if (fromCopy[6])
  {
    [(APPBInstallAttribution *)self setAttributionSignature:?];
    fromCopy = v6;
  }

  if (fromCopy[7])
  {
    [(APPBInstallAttribution *)self setUuid:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 72);
  if (v5)
  {
    self->_adamId = fromCopy[1];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 72);
    if ((v5 & 4) == 0)
    {
LABEL_13:
      if ((v5 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((fromCopy[9] & 4) == 0)
  {
    goto LABEL_13;
  }

  self->_sourceAppAdamId = fromCopy[3];
  *&self->_has |= 4u;
  if ((fromCopy[9] & 8) != 0)
  {
LABEL_14:
    self->_timestamp = fromCopy[4];
    *&self->_has |= 8u;
  }

LABEL_15:
}

@end