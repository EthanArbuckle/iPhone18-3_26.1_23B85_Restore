@interface PDURLSessionProxyOpenSocket
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyOpenSocket

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  session = self->_session;
  v6 = *(v4 + 3);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (*(v4 + 4))
  {
    [(PDURLSessionProxyOpenSocket *)self setSocketUUID:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(PDURLSessionProxyOpenSocket *)self setHost:?];
    v4 = v7;
  }

  if (*(v4 + 40))
  {
    self->_port = *(v4 + 4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  session = self->_session;
  if (session | *(v4 + 3))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
    {
      goto LABEL_12;
    }
  }

  socketUUID = self->_socketUUID;
  if (socketUUID | *(v4 + 4))
  {
    if (![(NSString *)socketUUID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  host = self->_host;
  if (host | *(v4 + 1))
  {
    if (![(NSString *)host isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_port == *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_socketUUID copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_host copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_port;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_session)
  {
    [v4 setSession:?];
    v4 = v5;
  }

  if (self->_socketUUID)
  {
    [v5 setSocketUUID:?];
    v4 = v5;
  }

  if (self->_host)
  {
    [v5 setHost:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_port;
    *(v4 + 40) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_socketUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_host)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    port = self->_port;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
      if (!PBReaderPlaceMark() || !sub_100077B9C(v24, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v26 = [a3 position];
      if (v26 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
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
        v20 = [a3 position] + 1;
        if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
        {
          v22 = [a3 data];
          [v22 getBytes:v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      if ([a3 hasError])
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

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  session = self->_session;
  if (session)
  {
    v5 = [(PDURLSessionProxySessionMessage *)session dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"session"];
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
  v4 = [(PDURLSessionProxyOpenSocket *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end