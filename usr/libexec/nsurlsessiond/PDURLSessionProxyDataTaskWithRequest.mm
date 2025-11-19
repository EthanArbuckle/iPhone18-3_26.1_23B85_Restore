@interface PDURLSessionProxyDataTaskWithRequest
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

@implementation PDURLSessionProxyDataTaskWithRequest

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = v4[4];
  v11 = v4;
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

    [(PDURLSessionProxyDataTaskWithRequest *)self setTask:?];
  }

  v4 = v11;
LABEL_7:
  originalRequest = self->_originalRequest;
  v8 = v4[3];
  if (originalRequest)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyRequest *)originalRequest mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyDataTaskWithRequest *)self setOriginalRequest:?];
  }

  v4 = v11;
LABEL_13:
  currentRequest = self->_currentRequest;
  v10 = v4[2];
  if (currentRequest)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(PDURLSessionProxyRequest *)currentRequest mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(PDURLSessionProxyDataTaskWithRequest *)self setCurrentRequest:?];
  }

  v4 = v11;
LABEL_19:
  if (v4[5])
  {
    self->_taskSequenceNumber = v4[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(PDURLSessionProxyRequest *)self->_originalRequest hash];
  v5 = [(PDURLSessionProxyRequest *)self->_currentRequest hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_taskSequenceNumber;
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

  task = self->_task;
  if (task | *(v4 + 4))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_12;
    }
  }

  originalRequest = self->_originalRequest;
  if (originalRequest | *(v4 + 3))
  {
    if (![(PDURLSessionProxyRequest *)originalRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  currentRequest = self->_currentRequest;
  if (currentRequest | *(v4 + 2))
  {
    if (![(PDURLSessionProxyRequest *)currentRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_taskSequenceNumber == *(v4 + 1))
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
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDURLSessionProxyRequest *)self->_originalRequest copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PDURLSessionProxyRequest *)self->_currentRequest copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    v5[1] = self->_taskSequenceNumber;
    *(v5 + 40) |= 1u;
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

  if (self->_originalRequest)
  {
    [v5 setOriginalRequest:?];
    v4 = v5;
  }

  if (self->_currentRequest)
  {
    [v5 setCurrentRequest:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_taskSequenceNumber;
    *(v4 + 40) |= 1u;
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

  if (self->_originalRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_currentRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    taskSequenceNumber = self->_taskSequenceNumber;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
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
        LOBYTE(v26) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v26 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v26 & 0x7F) << v6;
        if ((v26 & 0x80) == 0)
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
        if (v14 == 3)
        {
          v15 = objc_alloc_init(PDURLSessionProxyRequest);
          v16 = 16;
LABEL_38:
          objc_storeStrong(&self->PBRequest_opaque[v16], v15);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_10005DE74(v15, a3))
          {
            goto LABEL_47;
          }

LABEL_40:
          PBReaderRecallMark();

          goto LABEL_45;
        }

        if (v14 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a3 position] + 1;
            if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
            {
              v22 = [a3 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_44;
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

LABEL_44:
          self->_taskSequenceNumber = v23;
          goto LABEL_45;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(PDURLSessionProxyTaskMessage);
          objc_storeStrong(&self->_task, v15);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !sub_10006CE20(v15, a3))
          {
LABEL_47:

            return 0;
          }

          goto LABEL_40;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(PDURLSessionProxyRequest);
          v16 = 24;
          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v24 = [a3 position];
    }

    while (v24 < [a3 length]);
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

  originalRequest = self->_originalRequest;
  if (originalRequest)
  {
    v7 = [(PDURLSessionProxyRequest *)originalRequest dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"originalRequest"];
  }

  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    v9 = [(PDURLSessionProxyRequest *)currentRequest dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"currentRequest"];
  }

  if (*&self->_has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_taskSequenceNumber];
    [v3 setObject:v10 forKey:@"taskSequenceNumber"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyDataTaskWithRequest;
  v3 = [(PDURLSessionProxyDataTaskWithRequest *)&v7 description];
  v4 = [(PDURLSessionProxyDataTaskWithRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end