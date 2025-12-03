@interface PDURLSessionProxyInvalidateSession
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

@implementation PDURLSessionProxyInvalidateSession

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  session = self->_session;
  v6 = *(fromCopy + 1);
  if (session)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PDURLSessionProxySessionMessage *)session mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PDURLSessionProxyInvalidateSession *)self setSession:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 20))
  {
    self->_shouldCancel = *(fromCopy + 16);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxySessionMessage *)self->_session hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_shouldCancel;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  session = self->_session;
  if (session | *(equalCopy + 1))
  {
    if (![(PDURLSessionProxySessionMessage *)session isEqual:?])
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

    if (self->_shouldCancel)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxySessionMessage *)self->_session copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_shouldCancel;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_session)
  {
    v5 = toCopy;
    [toCopy setSession:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_shouldCancel;
    toCopy[20] |= 1u;
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

  if (*&self->_has)
  {
    shouldCancel = self->_shouldCancel;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v24 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v24[0] & 0x7F) << v6;
        if ((v24[0] & 0x80) == 0)
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
        break;
      }

      if ((v13 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:v24 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v24[0] & 0x7F) << v15;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            LOBYTE(v21) = 0;
            goto LABEL_34;
          }
        }

        v21 = (v17 != 0) & ~[from hasError];
LABEL_34:
        self->_shouldCancel = v21;
      }

      else if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(PDURLSessionProxySessionMessage);
        objc_storeStrong(&self->_session, v14);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100077B9C(v14, from))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
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

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithBool:self->_shouldCancel];
    [v3 setObject:v6 forKey:@"shouldCancel"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyInvalidateSession;
  v3 = [(PDURLSessionProxyInvalidateSession *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyInvalidateSession *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end