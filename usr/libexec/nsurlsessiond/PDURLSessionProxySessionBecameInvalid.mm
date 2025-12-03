@interface PDURLSessionProxySessionBecameInvalid
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxySessionBecameInvalid

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  session = self->_session;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

    [(PDURLSessionProxySessionBecameInvalid *)self setSession:?];
  }

  fromCopy = v9;
LABEL_7:
  error = self->_error;
  v8 = fromCopy[1];
  if (error)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyError *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxySessionBecameInvalid *)self setError:?];
  }

  fromCopy = v9;
LABEL_13:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((session = self->_session, !(session | equalCopy[2])) || -[PDURLSessionProxySessionMessage isEqual:](session, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v7 = [(PDURLSessionProxyError *)error isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDURLSessionProxyError *)self->_error copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

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

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_session)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
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
        LOBYTE(v17) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v17 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v17 & 0x7F) << v6;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
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

      if ((v13 >> 3) == 2)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(PDURLSessionProxySessionMessage);
        objc_storeStrong(&self->_session, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !sub_100077B9C(v14, from))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(PDURLSessionProxyError);
    objc_storeStrong(&self->_error, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !sub_10006F354(v14, from))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
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

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(PDURLSessionProxyError *)error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxySessionBecameInvalid;
  v3 = [(PDURLSessionProxySessionBecameInvalid *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxySessionBecameInvalid *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end