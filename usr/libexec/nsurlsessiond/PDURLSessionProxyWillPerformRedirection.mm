@interface PDURLSessionProxyWillPerformRedirection
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

@implementation PDURLSessionProxyWillPerformRedirection

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = v4[3];
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

    [(PDURLSessionProxyWillPerformRedirection *)self setTask:?];
  }

  v4 = v11;
LABEL_7:
  request = self->_request;
  v8 = v4[1];
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

  v4 = v11;
LABEL_13:
  response = self->_response;
  v10 = v4[2];
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

  v4 = v11;
LABEL_19:
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(PDURLSessionProxyRequest *)self->_request hash]^ v3;
  return v4 ^ [(PDURLSessionProxyResponse *)self->_response hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | v4[3])) || -[PDURLSessionProxyTaskMessage isEqual:](task, "isEqual:")) && ((request = self->_request, !(request | v4[1])) || -[PDURLSessionProxyRequest isEqual:](request, "isEqual:")))
  {
    response = self->_response;
    if (response | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDURLSessionProxyRequest *)self->_request copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDURLSessionProxyResponse *)self->_response copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

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

  if (self->_response)
  {
    [v5 setResponse:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
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
        LOBYTE(v18) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v15 = objc_alloc_init(PDURLSessionProxyResponse);
        objc_storeStrong(&self->_response, v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !sub_100057BC0(v15, a3))
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
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, a3))
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
      v16 = [a3 position];
      if (v16 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDURLSessionProxyRequest);
    objc_storeStrong(&self->_request, v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !sub_10005DE74(v15, a3))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
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

  response = self->_response;
  if (response)
  {
    v9 = [(PDURLSessionProxyResponse *)response dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"response"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyWillPerformRedirection;
  v3 = [(PDURLSessionProxyWillPerformRedirection *)&v7 description];
  v4 = [(PDURLSessionProxyWillPerformRedirection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end