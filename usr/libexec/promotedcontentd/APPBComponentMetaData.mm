@interface APPBComponentMetaData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)relevantIdentifierTypeAsString:(int)string;
- (int)StringAsRelevantIdentifierType:(id)type;
- (int)relevantIdentifierType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationInSeconds:(BOOL)seconds;
- (void)setHasRelevantIdentifierType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation APPBComponentMetaData

- (int)relevantIdentifierType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_relevantIdentifierType;
  }

  else
  {
    return 15001;
  }
}

- (void)setHasRelevantIdentifierType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)relevantIdentifierTypeAsString:(int)string
{
  if ((string - 15001) >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047E010 + (string - 15001));
  }

  return v4;
}

- (int)StringAsRelevantIdentifierType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UniqueAd"])
  {
    v4 = 15001;
  }

  else if ([typeCopy isEqualToString:@"Line"])
  {
    v4 = 15002;
  }

  else if ([typeCopy isEqualToString:@"Campaign"])
  {
    v4 = 15003;
  }

  else if ([typeCopy isEqualToString:@"Creative"])
  {
    v4 = 15004;
  }

  else if ([typeCopy isEqualToString:@"AdamId"])
  {
    v4 = 15005;
  }

  else
  {
    v4 = 15001;
  }

  return v4;
}

- (void)setHasDurationInSeconds:(BOOL)seconds
{
  if (seconds)
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
  v7.super_class = APPBComponentMetaData;
  v3 = [(APPBComponentMetaData *)&v7 description];
  dictionaryRepresentation = [(APPBComponentMetaData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = self->_relevantIdentifierType - 15001;
    if (v4 >= 5)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_relevantIdentifierType];
    }

    else
    {
      v5 = *(&off_10047E010 + v4);
    }

    [v3 setObject:v5 forKey:@"relevantIdentifierType"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_durationInSeconds];
    [v3 setObject:v8 forKey:@"durationInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithDouble:self->_eventTimestamp];
    [v3 setObject:v9 forKey:@"eventTimestamp"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[8] = self->_relevantIdentifierType;
    *(toCopy + 36) |= 4u;
  }

  if (self->_identifier)
  {
    v6 = toCopy;
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_durationInSeconds;
    *(toCopy + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_eventTimestamp;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[8] = self->_relevantIdentifierType;
    *(v5 + 36) |= 4u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 4) = self->_durationInSeconds;
    *(v6 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v6[1] = *&self->_eventTimestamp;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_relevantIdentifierType != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_durationInSeconds != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  v7 = (*(equalCopy + 36) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_eventTimestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_relevantIdentifierType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_durationInSeconds;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v11 = 0;
    return v4 ^ v3 ^ v7 ^ v11;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  eventTimestamp = self->_eventTimestamp;
  if (eventTimestamp < 0.0)
  {
    eventTimestamp = -eventTimestamp;
  }

  *v5.i64 = floor(eventTimestamp + 0.5);
  v9 = (eventTimestamp - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
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

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 4) != 0)
  {
    self->_relevantIdentifierType = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(APPBComponentMetaData *)self setIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_durationInSeconds = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
  }

  if (v5)
  {
    self->_eventTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end