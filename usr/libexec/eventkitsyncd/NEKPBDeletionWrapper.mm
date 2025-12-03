@interface NEKPBDeletionWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNekStoreType:(BOOL)type;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NEKPBDeletionWrapper

- (void)setHasType:(BOOL)type
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

- (void)setHasNekStoreType:(BOOL)type
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBDeletionWrapper;
  v3 = [(NEKPBDeletionWrapper *)&v7 description];
  dictionaryRepresentation = [(NEKPBDeletionWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  syncId = self->_syncId;
  if (syncId)
  {
    [v3 setObject:syncId forKey:@"syncId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v4 setObject:v6 forKey:@"type"];
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v4 setObject:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_nekChangeType];
    [v4 setObject:v9 forKey:@"nekChangeType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_nekStoreType];
    [v4 setObject:v10 forKey:@"nekStoreType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_syncId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_syncId)
  {
    [toCopy setSyncId:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 8) = self->_type;
    *(toCopy + 36) |= 4u;
  }

  if (self->_calendarIdentifier)
  {
    [v6 setCalendarIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_nekChangeType;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_nekStoreType;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_syncId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 36) |= 4u;
  }

  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 4) = self->_nekChangeType;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_nekStoreType;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  syncId = self->_syncId;
  if (syncId | *(equalCopy + 3))
  {
    if (![(NSString *)syncId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)calendarIdentifier isEqual:?])
    {
LABEL_21:
      v9 = 0;
      goto LABEL_22;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_nekChangeType != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_21;
  }

  v9 = (*(equalCopy + 36) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_nekStoreType != *(equalCopy + 5))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_syncId hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_calendarIdentifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_nekChangeType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_nekStoreType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NEKPBDeletionWrapper *)self setSyncId:?];
    fromCopy = v6;
  }

  if ((fromCopy[9] & 4) != 0)
  {
    self->_type = fromCopy[8];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 1))
  {
    [(NEKPBDeletionWrapper *)self setCalendarIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_nekChangeType = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_nekStoreType = fromCopy[5];
    *&self->_has |= 2u;
  }
}

@end