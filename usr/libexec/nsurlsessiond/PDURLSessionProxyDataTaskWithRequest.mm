@interface PDURLSessionProxyDataTaskWithRequest
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

@implementation PDURLSessionProxyDataTaskWithRequest

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[4];
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  originalRequest = self->_originalRequest;
  v8 = fromCopy[3];
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

  fromCopy = v11;
LABEL_13:
  currentRequest = self->_currentRequest;
  v10 = fromCopy[2];
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

  fromCopy = v11;
LABEL_19:
  if (fromCopy[5])
  {
    self->_taskSequenceNumber = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  task = self->_task;
  if (task | *(equalCopy + 4))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_12;
    }
  }

  originalRequest = self->_originalRequest;
  if (originalRequest | *(equalCopy + 3))
  {
    if (![(PDURLSessionProxyRequest *)originalRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  currentRequest = self->_currentRequest;
  if (currentRequest | *(equalCopy + 2))
  {
    if (![(PDURLSessionProxyRequest *)currentRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_taskSequenceNumber == *(equalCopy + 1))
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
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDURLSessionProxyRequest *)self->_originalRequest copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PDURLSessionProxyRequest *)self->_currentRequest copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    v5[1] = self->_taskSequenceNumber;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_task)
  {
    [toCopy setTask:?];
    toCopy = v5;
  }

  if (self->_originalRequest)
  {
    [v5 setOriginalRequest:?];
    toCopy = v5;
  }

  if (self->_currentRequest)
  {
    [v5 setCurrentRequest:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_taskSequenceNumber;
    *(toCopy + 40) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_originalRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_currentRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    taskSequenceNumber = self->_taskSequenceNumber;
    PBDataWriterWriteUint64Field();
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
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v26 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
          if (!PBReaderPlaceMark() || !sub_10005DE74(v15, from))
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
            v20 = [from position] + 1;
            if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v26 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          if ([from hasError])
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
          if (!PBReaderPlaceMark() || !sub_10006CE20(v15, from))
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  task = self->_task;
  if (task)
  {
    dictionaryRepresentation = [(PDURLSessionProxyTaskMessage *)task dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"task"];
  }

  originalRequest = self->_originalRequest;
  if (originalRequest)
  {
    dictionaryRepresentation2 = [(PDURLSessionProxyRequest *)originalRequest dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"originalRequest"];
  }

  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    dictionaryRepresentation3 = [(PDURLSessionProxyRequest *)currentRequest dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"currentRequest"];
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
  dictionaryRepresentation = [(PDURLSessionProxyDataTaskWithRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end