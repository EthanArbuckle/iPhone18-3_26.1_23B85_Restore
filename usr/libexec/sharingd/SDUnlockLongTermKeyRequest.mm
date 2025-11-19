@interface SDUnlockLongTermKeyRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockLongTermKeyRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDUnlockLongTermKeyRequest;
  v3 = [(SDUnlockLongTermKeyRequest *)&v7 description];
  v4 = [(SDUnlockLongTermKeyRequest *)self dictionaryRepresentation];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 1u;
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_requestID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_longTermKey copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  requestID = self->_requestID;
  if (requestID | *(v4 + 2) && ![(NSString *)requestID isEqual:?])
  {
    goto LABEL_11;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(v4 + 1))
  {
    v8 = [(NSData *)longTermKey isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

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

  v4 = [(NSString *)self->_requestID hash]^ v3;
  return v4 ^ [(NSData *)self->_longTermKey hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_version = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(SDUnlockLongTermKeyRequest *)self setRequestID:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SDUnlockLongTermKeyRequest *)self setLongTermKey:?];
    v4 = v5;
  }
}

@end