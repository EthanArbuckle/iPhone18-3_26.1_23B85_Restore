@interface SDUnlockLongTermKeyResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasKeyFailed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockLongTermKeyResponse

- (void)setHasKeyFailed:(BOOL)a3
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
  v7.super_class = SDUnlockLongTermKeyResponse;
  v3 = [(SDUnlockLongTermKeyResponse *)&v7 description];
  v4 = [(SDUnlockLongTermKeyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [v3 setObject:requestID forKey:@"requestID"];
  }

  longTermKey = self->_longTermKey;
  if (longTermKey)
  {
    [v3 setObject:longTermKey forKey:@"longTermKey"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_keyFailed];
    [v3 setObject:v7 forKey:@"keyFailed"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    keyFailed = self->_keyFailed;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_requestID)
  {
    [v4 setRequestID:?];
    v4 = v5;
  }

  if (self->_longTermKey)
  {
    [v5 setLongTermKey:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 28) = self->_keyFailed;
    *(v4 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[6] = self->_version;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_requestID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_longTermKey copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 28) = self->_keyFailed;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_13;
  }

  requestID = self->_requestID;
  if (requestID | *(v4 + 2) && ![(NSString *)requestID isEqual:?])
  {
    goto LABEL_13;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(v4 + 1))
  {
    if (![(NSData *)longTermKey isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    if (self->_keyFailed)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_13;
    }

    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_requestID hash];
  v5 = [(NSData *)self->_longTermKey hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_keyFailed;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 32))
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(SDUnlockLongTermKeyResponse *)self setRequestID:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SDUnlockLongTermKeyResponse *)self setLongTermKey:?];
    v4 = v5;
  }

  if ((*(v4 + 32) & 2) != 0)
  {
    self->_keyFailed = *(v4 + 28);
    *&self->_has |= 2u;
  }
}

@end