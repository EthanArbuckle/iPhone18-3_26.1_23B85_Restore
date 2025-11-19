@interface PDURLSessionProxyWillSendRequest
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

@implementation PDURLSessionProxyWillSendRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = *(v4 + 2);
  v9 = v4;
  if (task)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxyTaskMessage *)task mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDURLSessionProxyWillSendRequest *)self setTask:?];
  }

  v4 = v9;
LABEL_7:
  request = self->_request;
  v8 = *(v4 + 1);
  if (request)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyRequest *)request mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyWillSendRequest *)self setRequest:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 28))
  {
    self->_hasBodyStream = *(v4 + 24);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(PDURLSessionProxyRequest *)self->_request hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_hasBodyStream;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  task = self->_task;
  if (task | *(v4 + 2))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_8;
    }
  }

  request = self->_request;
  if (request | *(v4 + 1))
  {
    if (![(PDURLSessionProxyRequest *)request isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_hasBodyStream)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDURLSessionProxyRequest *)self->_request copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_hasBodyStream;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_task)
  {
    [v4 setTask:?];
    v4 = v5;
  }

  if (self->_request)
  {
    [v5 setRequest:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_hasBodyStream;
    v4[28] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    hasBodyStream = self->_hasBodyStream;
    PBDataWriterWriteBOOLField();
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
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
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
      if ((v13 >> 3) == 3)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v25) = 0;
          v19 = [a3 position] + 1;
          if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
          {
            v21 = [a3 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_38;
          }
        }

        v22 = (v18 != 0) & ~[a3 hasError];
LABEL_38:
        self->_hasBodyStream = v22;
        goto LABEL_39;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, v15);
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, a3))
        {
          goto LABEL_41;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_39;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v23 = [a3 position];
      if (v23 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDURLSessionProxyRequest);
    objc_storeStrong(&self->_request, v15);
    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !sub_10005DE74(v15, a3))
    {
LABEL_41:

      return 0;
    }

    goto LABEL_25;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  task = self->_task;
  if (task)
  {
    v5 = [(PDURLSessionProxyTaskMessage *)task dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"task"];
  }

  request = self->_request;
  if (request)
  {
    v7 = [(PDURLSessionProxyRequest *)request dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"request"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithBool:self->_hasBodyStream];
    [v3 setObject:v8 forKey:@"hasBodyStream"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyWillSendRequest;
  v3 = [(PDURLSessionProxyWillSendRequest *)&v7 description];
  v4 = [(PDURLSessionProxyWillSendRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end