@interface PDURLSessionProxyOpenSocket
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyOpenSocket

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  session = self->_session;
  v6 = *(fromCopy + 3);
  v7 = fromCopy;
  if (session)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxySessionMessage *)session mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxyOpenSocket *)self setSession:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 4))
  {
    [(PDURLSessionProxyOpenSocket *)self setSocketUUID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 1))
  {
    [(PDURLSessionProxyOpenSocket *)self setHost:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 40))
  {
    self->_port = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxySessionMessage *)self->_session hash];
  v4 = [(NSString *)self->_socketUUID hash];
  v5 = [(NSString *)self->_host hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_port;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  session = self->_session;
  if (session | *(equalCopy + 3))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_12;
    }
  }

  socketUUID = self->_socketUUID;
  if (socketUUID | *(equalCopy + 4))
  {
    if (![(NSString *)socketUUID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  host = self->_host;
  if (host | *(equalCopy + 1))
  {
    if (![(NSString *)host isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_port == *(equalCopy + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_socketUUID copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_host copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_port;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_session)
  {
    [toCopy setSession:?];
    toCopy = v5;
  }

  if (self->_socketUUID)
  {
    [v5 setSocketUUID:?];
    toCopy = v5;
  }

  if (self->_host)
  {
    [v5 setHost:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_port;
    *(toCopy + 40) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_socketUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_host)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    port = self->_port;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v28[0] & 0x7F) << v6;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 32;
LABEL_38:
          v25 = *&self->PBCodable_opaque[v16];
          *&self->PBCodable_opaque[v16] = v15;

          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v24 = objc_alloc_init(PDURLSessionProxySessionMessage);
      objc_storeStrong(&self->_session, v24);
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100077B9C(v24, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 == 3)
    {
      v15 = PBReaderReadString();
      v16 = 8;
      goto LABEL_38;
    }

    if (v14 == 4)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&self->_has |= 1u;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v20 = [from position] + 1;
        if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
        {
          data2 = [from data];
          [data2 getBytes:v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v19 |= (v28[0] & 0x7F) << v17;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
        {
          v23 = 0;
          goto LABEL_42;
        }
      }

      if ([from hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_42:
      self->_port = v23;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    dictionaryRepresentation = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"session"];
  }

  socketUUID = self->_socketUUID;
  if (socketUUID)
  {
    [v3 setObject:socketUUID forKey:@"socketUUID"];
  }

  host = self->_host;
  if (host)
  {
    [v3 setObject:host forKey:@"host"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_port];
    [v3 setObject:v8 forKey:@"port"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyOpenSocket;
  v3 = [(PDURLSessionProxyOpenSocket *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyOpenSocket *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end