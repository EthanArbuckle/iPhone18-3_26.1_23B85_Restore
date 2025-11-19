@interface NEKPBCalendarWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsDefaultEventCalendar:(BOOL)a3;
- (void)setHasIsDefaultTaskCalendar:(BOOL)a3;
- (void)setHasNekStoreType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBCalendarWrapper

- (void)setHasIsDefaultTaskCalendar:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDefaultEventCalendar:(BOOL)a3
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
  v7.super_class = NEKPBCalendarWrapper;
  v3 = [(NEKPBCalendarWrapper *)&v7 description];
  v4 = [(NEKPBCalendarWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    v5 = [(NEKPBSourceID *)sourceIdentifier dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sourceIdentifier"];
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v3 setObject:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  attributes = self->_attributes;
  if (attributes)
  {
    v8 = [(NEKPBCalendarAttributes *)attributes dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"attributes"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_isDefaultTaskCalendar];
    [v3 setObject:v10 forKey:@"isDefaultTaskCalendar"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_isDefaultEventCalendar];
    [v3 setObject:v11 forKey:@"isDefaultEventCalendar"];
  }

  oldCalendarIdentifier = self->_oldCalendarIdentifier;
  if (oldCalendarIdentifier)
  {
    [v3 setObject:oldCalendarIdentifier forKey:@"oldCalendarIdentifier"];
  }

  v13 = self->_has;
  if (v13)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_nekChangeType];
    [v3 setObject:v14 forKey:@"nekChangeType"];

    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_nekStoreType];
    [v3 setObject:v15 forKey:@"nekStoreType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isDefaultTaskCalendar = self->_isDefaultTaskCalendar;
    PBDataWriterWriteBOOLField();
    v4 = v11;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isDefaultEventCalendar = self->_isDefaultEventCalendar;
    PBDataWriterWriteBOOLField();
    v4 = v11;
  }

  if (self->_oldCalendarIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  v8 = self->_has;
  if (v8)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    v4 = v11;
    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_sourceIdentifier)
  {
    [v4 setSourceIdentifier:?];
    v4 = v7;
  }

  if (self->_calendarIdentifier)
  {
    [v7 setCalendarIdentifier:?];
    v4 = v7;
  }

  if (self->_attributes)
  {
    [v7 setAttributes:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 49) = self->_isDefaultTaskCalendar;
    *(v4 + 52) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 48) = self->_isDefaultEventCalendar;
    *(v4 + 52) |= 4u;
  }

  if (self->_oldCalendarIdentifier)
  {
    [v7 setOldCalendarIdentifier:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 6) = self->_nekChangeType;
    *(v4 + 52) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    *(v4 + 7) = self->_nekStoreType;
    *(v4 + 52) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NEKPBSourceID *)self->_sourceIdentifier copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_calendarIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NEKPBCalendarAttributes *)self->_attributes copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 49) = self->_isDefaultTaskCalendar;
    *(v5 + 52) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_isDefaultEventCalendar;
    *(v5 + 52) |= 4u;
  }

  v13 = [(NSString *)self->_oldCalendarIdentifier copyWithZone:a3];
  v14 = v5[4];
  v5[4] = v13;

  v15 = self->_has;
  if (v15)
  {
    *(v5 + 6) = self->_nekChangeType;
    *(v5 + 52) |= 1u;
    v15 = self->_has;
  }

  if ((v15 & 2) != 0)
  {
    *(v5 + 7) = self->_nekStoreType;
    *(v5 + 52) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(v4 + 5))
  {
    if (![(NEKPBSourceID *)sourceIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(v4 + 2))
  {
    if (![(NSString *)calendarIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  attributes = self->_attributes;
  if (attributes | *(v4 + 1))
  {
    if (![(NEKPBCalendarAttributes *)attributes isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v9 = *(v4 + 52);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0)
    {
      goto LABEL_35;
    }

    v11 = *(v4 + 49);
    if (self->_isDefaultTaskCalendar)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_35;
    }

    v12 = *(v4 + 48);
    if (self->_isDefaultEventCalendar)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_35;
  }

  oldCalendarIdentifier = self->_oldCalendarIdentifier;
  if (!(oldCalendarIdentifier | *(v4 + 4)))
  {
    goto LABEL_15;
  }

  if (![(NSString *)oldCalendarIdentifier isEqual:?])
  {
LABEL_35:
    v13 = 0;
    goto LABEL_36;
  }

  has = self->_has;
LABEL_15:
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_nekChangeType != *(v4 + 6))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_35;
  }

  v13 = (*(v4 + 52) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_nekStoreType != *(v4 + 7))
    {
      goto LABEL_35;
    }

    v13 = 1;
  }

LABEL_36:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NEKPBSourceID *)self->_sourceIdentifier hash];
  v4 = [(NSString *)self->_calendarIdentifier hash];
  v5 = [(NEKPBCalendarAttributes *)self->_attributes hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_isDefaultTaskCalendar;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isDefaultEventCalendar;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [(NSString *)self->_oldCalendarIdentifier hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_nekChangeType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = 2654435761 * self->_nekStoreType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sourceIdentifier = self->_sourceIdentifier;
  v6 = *(v4 + 5);
  v11 = v4;
  if (sourceIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBSourceID *)sourceIdentifier mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBCalendarWrapper *)self setSourceIdentifier:?];
  }

  v4 = v11;
LABEL_7:
  if (*(v4 + 2))
  {
    [(NEKPBCalendarWrapper *)self setCalendarIdentifier:?];
    v4 = v11;
  }

  attributes = self->_attributes;
  v8 = *(v4 + 1);
  if (attributes)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(NEKPBCalendarAttributes *)attributes mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(NEKPBCalendarWrapper *)self setAttributes:?];
  }

  v4 = v11;
LABEL_15:
  v9 = *(v4 + 52);
  if ((v9 & 8) != 0)
  {
    self->_isDefaultTaskCalendar = *(v4 + 49);
    *&self->_has |= 8u;
    v9 = *(v4 + 52);
  }

  if ((v9 & 4) != 0)
  {
    self->_isDefaultEventCalendar = *(v4 + 48);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(NEKPBCalendarWrapper *)self setOldCalendarIdentifier:?];
    v4 = v11;
  }

  v10 = *(v4 + 52);
  if (v10)
  {
    self->_nekChangeType = *(v4 + 6);
    *&self->_has |= 1u;
    v10 = *(v4 + 52);
  }

  if ((v10 & 2) != 0)
  {
    self->_nekStoreType = *(v4 + 7);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end