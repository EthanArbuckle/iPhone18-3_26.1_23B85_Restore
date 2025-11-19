@interface NEKPBSourceID
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSourceID

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSourceID;
  v3 = [(NEKPBSourceID *)&v7 description];
  v4 = [(NEKPBSourceID *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_persistentID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isLocalStore = self->_isLocalStore;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_persistentID)
  {
    v5 = v4;
    [v4 setPersistentID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[16] = self->_isLocalStore;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_persistentID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_isLocalStore;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  persistentID = self->_persistentID;
  if (persistentID | *(v4 + 1))
  {
    if (![(NSString *)persistentID isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_isLocalStore)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(NEKPBSourceID *)self setPersistentID:?];
    v4 = v5;
  }

  if (v4[20])
  {
    self->_isLocalStore = v4[16];
    *&self->_has |= 1u;
  }
}

@end