@interface NEKPBSourceWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNekStoreType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NEKPBSourceWrapper

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
  v7.super_class = NEKPBSourceWrapper;
  v3 = [(NEKPBSourceWrapper *)&v7 description];
  dictionaryRepresentation = [(NEKPBSourceWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  attributes = self->_attributes;
  if (attributes)
  {
    dictionaryRepresentation = [(NEKPBSourceAttributes *)attributes dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"attributes"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_nekChangeType];
    [v3 setObject:v7 forKey:@"nekChangeType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_nekStoreType];
    [v3 setObject:v8 forKey:@"nekStoreType"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_attributes)
  {
    v6 = toCopy;
    [toCopy setAttributes:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_nekChangeType;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_nekStoreType;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NEKPBSourceAttributes *)self->_attributes copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 4) = self->_nekChangeType;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_nekStoreType;
    *(v5 + 24) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  attributes = self->_attributes;
  if (attributes | *(equalCopy + 1))
  {
    if (![(NEKPBSourceAttributes *)attributes isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_nekChangeType != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_nekStoreType != *(equalCopy + 5))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NEKPBSourceAttributes *)self->_attributes hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_nekChangeType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_nekStoreType;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  attributes = self->_attributes;
  v6 = *(fromCopy + 1);
  if (attributes)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(NEKPBSourceAttributes *)attributes mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(NEKPBSourceWrapper *)self setAttributes:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 24);
  if (v7)
  {
    self->_nekChangeType = *(fromCopy + 4);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 24);
  }

  if ((v7 & 2) != 0)
  {
    self->_nekStoreType = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end