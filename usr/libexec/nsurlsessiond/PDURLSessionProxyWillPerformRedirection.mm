@interface PDURLSessionProxyWillPerformRedirection
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

@implementation PDURLSessionProxyWillPerformRedirection

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[3];
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

    [(PDURLSessionProxyWillPerformRedirection *)self setTask:?];
  }

  fromCopy = v11;
LABEL_7:
  request = self->_request;
  v8 = fromCopy[1];
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

    [(PDURLSessionProxyWillPerformRedirection *)self setRequest:?];
  }

  fromCopy = v11;
LABEL_13:
  response = self->_response;
  v10 = fromCopy[2];
  if (response)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(PDURLSessionProxyResponse *)response mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(PDURLSessionProxyWillPerformRedirection *)self setResponse:?];
  }

  fromCopy = v11;
LABEL_19:
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(PDURLSessionProxyRequest *)self->_request hash]^ v3;
  return v4 ^ [(PDURLSessionProxyResponse *)self->_response hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | equalCopy[3])) || -[PDURLSessionProxyTaskMessage isEqual:](task, "isEqual:")) && ((request = self->_request, !(request | equalCopy[1])) || -[PDURLSessionProxyRequest isEqual:](request, "isEqual:")))
  {
    response = self->_response;
    if (response | equalCopy[2])
    {
      v8 = [(PDURLSessionProxyResponse *)response isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDURLSessionProxyRequest *)self->_request copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDURLSessionProxyResponse *)self->_response copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

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

  if (self->_request)
  {
    [v5 setRequest:?];
    toCopy = v5;
  }

  if (self->_response)
  {
    [v5 setResponse:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_response)
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
        LOBYTE(v18) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v18 & 0x7F) << v6;
        if ((v18 & 0x80) == 0)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v15 = objc_alloc_init(PDURLSessionProxyResponse);
        objc_storeStrong(&self->_response, v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !sub_100057BC0(v15, from))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, from))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDURLSessionProxyRequest);
    objc_storeStrong(&self->_request, v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !sub_10005DE74(v15, from))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
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

  request = self->_request;
  if (request)
  {
    dictionaryRepresentation2 = [(PDURLSessionProxyRequest *)request dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"request"];
  }

  response = self->_response;
  if (response)
  {
    dictionaryRepresentation3 = [(PDURLSessionProxyResponse *)response dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"response"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyWillPerformRedirection;
  v3 = [(PDURLSessionProxyWillPerformRedirection *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyWillPerformRedirection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end