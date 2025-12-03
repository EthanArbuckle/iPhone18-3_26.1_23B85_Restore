@interface NEKPBSourceID
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBSourceID

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSourceID;
  v3 = [(NEKPBSourceID *)&v7 description];
  dictionaryRepresentation = [(NEKPBSourceID *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  persistentID = self->_persistentID;
  if (persistentID)
  {
    [v3 setObject:persistentID forKey:@"persistentID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithBool:self->_isLocalStore];
    [v4 setObject:v6 forKey:@"isLocalStore"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_persistentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isLocalStore = self->_isLocalStore;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_persistentID)
  {
    v5 = toCopy;
    [toCopy setPersistentID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_isLocalStore;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_persistentID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_isLocalStore;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  persistentID = self->_persistentID;
  if (persistentID | *(equalCopy + 1))
  {
    if (![(NSString *)persistentID isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_isLocalStore)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_persistentID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isLocalStore;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(NEKPBSourceID *)self setPersistentID:?];
    fromCopy = v5;
  }

  if (fromCopy[20])
  {
    self->_isLocalStore = fromCopy[16];
    *&self->_has |= 1u;
  }
}

@end