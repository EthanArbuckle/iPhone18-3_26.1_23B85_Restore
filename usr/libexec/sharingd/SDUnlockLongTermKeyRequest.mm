@interface SDUnlockLongTermKeyRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockLongTermKeyRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDUnlockLongTermKeyRequest;
  v3 = [(SDUnlockLongTermKeyRequest *)&v7 description];
  dictionaryRepresentation = [(SDUnlockLongTermKeyRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_requestID)
  {
    [toCopy setRequestID:?];
    toCopy = v5;
  }

  if (self->_longTermKey)
  {
    [v5 setLongTermKey:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_requestID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_longTermKey copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 2) && ![(NSString *)requestID isEqual:?])
  {
    goto LABEL_11;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_version = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SDUnlockLongTermKeyRequest *)self setRequestID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SDUnlockLongTermKeyRequest *)self setLongTermKey:?];
    fromCopy = v5;
  }
}

@end