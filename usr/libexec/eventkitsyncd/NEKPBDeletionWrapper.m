@interface NEKPBDeletionWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNekStoreType:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBDeletionWrapper

- (void)setHasType:(BOOL)a3
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

- (void)setHasNekStoreType:(BOOL)a3
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
  v7.super_class = NEKPBDeletionWrapper;
  v3 = [(NEKPBDeletionWrapper *)&v7 description];
  v4 = [(NEKPBDeletionWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_syncId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_syncId)
  {
    [v4 setSyncId:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 8) = self->_type;
    *(v4 + 36) |= 4u;
  }

  if (self->_calendarIdentifier)
  {
    [v6 setCalendarIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_nekChangeType;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_nekStoreType;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_syncId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 36) |= 4u;
  }

  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  syncId = self->_syncId;
  if (syncId | *(v4 + 3))
  {
    if (![(NSString *)syncId isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  v7 = *(v4 + 36);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(v4 + 1))
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
    if ((*(v4 + 36) & 1) == 0 || self->_nekChangeType != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_21;
  }

  v9 = (*(v4 + 36) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_nekStoreType != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(NEKPBDeletionWrapper *)self setSyncId:?];
    v4 = v6;
  }

  if ((v4[9] & 4) != 0)
  {
    self->_type = v4[8];
    *&self->_has |= 4u;
  }

  if (*(v4 + 1))
  {
    [(NEKPBDeletionWrapper *)self setCalendarIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_nekChangeType = v4[4];
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_nekStoreType = v4[5];
    *&self->_has |= 2u;
  }
}

@end