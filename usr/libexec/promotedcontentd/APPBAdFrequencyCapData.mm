@interface APPBAdFrequencyCapData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)relevantIdentifierAsString:(int)a3;
- (int)StringAsRelevantIdentifier:(id)a3;
- (int)relevantIdentifier;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAdFrequencyValue:(BOOL)a3;
- (void)setHasRelevantIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdFrequencyCapData

- (int)relevantIdentifier
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_relevantIdentifier;
  }

  else
  {
    return 15001;
  }
}

- (void)setHasRelevantIdentifier:(BOOL)a3
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

- (id)relevantIdentifierAsString:(int)a3
{
  if ((a3 - 15001) >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047DAA0 + (a3 - 15001));
  }

  return v4;
}

- (int)StringAsRelevantIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UniqueAd"])
  {
    v4 = 15001;
  }

  else if ([v3 isEqualToString:@"Line"])
  {
    v4 = 15002;
  }

  else if ([v3 isEqualToString:@"Campaign"])
  {
    v4 = 15003;
  }

  else if ([v3 isEqualToString:@"Creative"])
  {
    v4 = 15004;
  }

  else if ([v3 isEqualToString:@"AdamId"])
  {
    v4 = 15005;
  }

  else
  {
    v4 = 15001;
  }

  return v4;
}

- (void)setHasAdFrequencyValue:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdFrequencyCapData;
  v3 = [(APPBAdFrequencyCapData *)&v7 description];
  v4 = [(APPBAdFrequencyCapData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = self->_relevantIdentifier - 15001;
    if (v5 >= 5)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_relevantIdentifier];
    }

    else
    {
      v6 = *(&off_10047DAA0 + v5);
    }

    [v3 setObject:v6 forKey:@"relevantIdentifier"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_adFrequencyValue];
    [v3 setObject:v7 forKey:@"adFrequencyValue"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_adFrequencyDuration];
    [v3 setObject:v8 forKey:@"adFrequencyDuration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[5] = self->_relevantIdentifier;
    *(v4 + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[4] = self->_adFrequencyValue;
  *(v4 + 24) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = self->_adFrequencyDuration;
    *(v4 + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 5) = self->_relevantIdentifier;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_adFrequencyValue;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_adFrequencyDuration;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_relevantIdentifier != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_adFrequencyValue != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_adFrequencyDuration != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_relevantIdentifier;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_adFrequencyValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_adFrequencyDuration;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_relevantIdentifier = *(v4 + 5);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_adFrequencyValue = *(v4 + 4);
  *&self->_has |= 2u;
  if (*(v4 + 24))
  {
LABEL_4:
    self->_adFrequencyDuration = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end