@interface NEKPBSetParticipantStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation NEKPBSetParticipantStatus

- (void)setHasStatus:(BOOL)status
{
  if (status)
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
  dictionaryRepresentation = [(NEKPBSetParticipantStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    span = self->_span;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_status;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_span;
    *(toCopy + 32) |= 1u;
  }

  v6 = toCopy;
  if (self->_itemIdentifier)
  {
    [toCopy setItemIdentifier:?];
    toCopy = v6;
  }

  if (self->_storeIdentifier)
  {
    [v6 setStoreIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_itemIdentifier copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSString *)self->_storeIdentifier copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_status != *(equalCopy + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_span != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_16;
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier | *(equalCopy + 1) && ![(NSString *)itemIdentifier isEqual:?])
  {
    goto LABEL_16;
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_status = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_span = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NEKPBSetParticipantStatus *)self setItemIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NEKPBSetParticipantStatus *)self setStoreIdentifier:?];
    fromCopy = v6;
  }
}

@end