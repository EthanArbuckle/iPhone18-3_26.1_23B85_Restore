@interface NEKPBSetParticipantStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSetParticipantStatus

- (void)setHasStatus:(BOOL)a3
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
  v7.super_class = NEKPBSetParticipantStatus;
  v3 = [(NEKPBSetParticipantStatus *)&v7 description];
  v4 = [(NEKPBSetParticipantStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_status];
    [v3 setObject:v5 forKey:@"status"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_span];
    [v3 setObject:v6 forKey:@"span"];
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    [v3 setObject:itemIdentifier forKey:@"itemIdentifier"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v3 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    span = self->_span;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_status;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_span;
    *(v4 + 32) |= 1u;
  }

  v6 = v4;
  if (self->_itemIdentifier)
  {
    [v4 setItemIdentifier:?];
    v4 = v6;
  }

  if (self->_storeIdentifier)
  {
    [v6 setStoreIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_status;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 4) = self->_span;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSString *)self->_storeIdentifier copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_status != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_span != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier | *(v4 + 1) && ![(NSString *)itemIdentifier isEqual:?])
  {
    goto LABEL_16;
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(v4 + 3))
  {
    v8 = [(NSString *)storeIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_status;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_span;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_itemIdentifier hash];
  return v5 ^ [(NSString *)self->_storeIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_status = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_span = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(NEKPBSetParticipantStatus *)self setItemIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NEKPBSetParticipantStatus *)self setStoreIdentifier:?];
    v4 = v6;
  }
}

@end