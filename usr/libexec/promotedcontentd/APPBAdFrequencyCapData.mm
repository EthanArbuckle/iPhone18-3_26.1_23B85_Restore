@interface APPBAdFrequencyCapData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)relevantIdentifierAsString:(int)string;
- (int)StringAsRelevantIdentifier:(id)identifier;
- (int)relevantIdentifier;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAdFrequencyValue:(BOOL)value;
- (void)setHasRelevantIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
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

- (void)setHasRelevantIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)relevantIdentifierAsString:(int)string
{
  if ((string - 15001) >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047DAA0 + (string - 15001));
  }

  return v4;
}

- (int)StringAsRelevantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"UniqueAd"])
  {
    v4 = 15001;
  }

  else if ([identifierCopy isEqualToString:@"Line"])
  {
    v4 = 15002;
  }

  else if ([identifierCopy isEqualToString:@"Campaign"])
  {
    v4 = 15003;
  }

  else if ([identifierCopy isEqualToString:@"Creative"])
  {
    v4 = 15004;
  }

  else if ([identifierCopy isEqualToString:@"AdamId"])
  {
    v4 = 15005;
  }

  else
  {
    v4 = 15001;
  }

  return v4;
}

- (void)setHasAdFrequencyValue:(BOOL)value
{
  if (value)
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
  dictionaryRepresentation = [(APPBAdFrequencyCapData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
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
  toCopy = v6;
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[5] = self->_relevantIdentifier;
    *(toCopy + 24) |= 4u;
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

  toCopy[4] = self->_adFrequencyValue;
  *(toCopy + 24) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = self->_adFrequencyDuration;
    *(toCopy + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_relevantIdentifier != *(equalCopy + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_adFrequencyValue != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_adFrequencyDuration != *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_relevantIdentifier = *(fromCopy + 5);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
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

  else if ((*(fromCopy + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_adFrequencyValue = *(fromCopy + 4);
  *&self->_has |= 2u;
  if (*(fromCopy + 24))
  {
LABEL_4:
    self->_adFrequencyDuration = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end