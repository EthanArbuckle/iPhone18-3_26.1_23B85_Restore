@interface NEKPBSourceWrapper
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNekStoreType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSourceWrapper

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
  v7.super_class = NEKPBSourceWrapper;
  v3 = [(NEKPBSourceWrapper *)&v7 description];
  v4 = [(NEKPBSourceWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  attributes = self->_attributes;
  if (attributes)
  {
    v5 = [(NEKPBSourceAttributes *)attributes dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"attributes"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_attributes)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    nekChangeType = self->_nekChangeType;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    nekStoreType = self->_nekStoreType;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_attributes)
  {
    v6 = v4;
    [v4 setAttributes:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_nekChangeType;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_nekStoreType;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NEKPBSourceAttributes *)self->_attributes copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  attributes = self->_attributes;
  if (attributes | *(v4 + 1))
  {
    if (![(NEKPBSourceAttributes *)attributes isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_nekChangeType != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_nekStoreType != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  attributes = self->_attributes;
  v6 = *(v4 + 1);
  if (attributes)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NEKPBSourceAttributes *)attributes mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(NEKPBSourceWrapper *)self setAttributes:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 24);
  if (v7)
  {
    self->_nekChangeType = *(v4 + 4);
    *&self->_has |= 1u;
    v7 = *(v4 + 24);
  }

  if ((v7 & 2) != 0)
  {
    self->_nekStoreType = *(v4 + 5);
    *&self->_has |= 2u;
  }

  _objc_release_x1();
}

@end