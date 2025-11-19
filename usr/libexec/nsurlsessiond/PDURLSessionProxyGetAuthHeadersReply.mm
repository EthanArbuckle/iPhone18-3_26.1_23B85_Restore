@interface PDURLSessionProxyGetAuthHeadersReply
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (NSDictionary)_actualAuthHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setActualAuthHeaders:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyGetAuthHeadersReply

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = *(v4 + 2);
  v7 = v4;
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

    [(PDURLSessionProxyGetAuthHeadersReply *)self setTask:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 1))
  {
    [(PDURLSessionProxyGetAuthHeadersReply *)self setHeaderData:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    self->_continueLoad = *(v4 + 24);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(NSData *)self->_headerData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_continueLoad;
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

  headerData = self->_headerData;
  if (headerData | *(v4 + 1))
  {
    if (![(NSData *)headerData isEqual:?])
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

    if (self->_continueLoad)
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

  v8 = [(NSData *)self->_headerData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_continueLoad;
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

  if (self->_headerData)
  {
    [v5 setHeaderData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_continueLoad;
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

  if (self->_headerData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    continueLoad = self->_continueLoad;
    PBDataWriterWriteBOOLField();
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
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v27 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v27[0] & 0x7F) << v6;
        if ((v27[0] & 0x80) == 0)
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
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v21 = [a3 position] + 1;
          if (v21 >= [a3 position] && (v22 = objc_msgSend(a3, "position") + 1, v22 <= objc_msgSend(a3, "length")))
          {
            v23 = [a3 data];
            [v23 getBytes:v27 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v20 |= (v27[0] & 0x7F) << v18;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v12 = v19++ >= 9;
          if (v12)
          {
            LOBYTE(v24) = 0;
            goto LABEL_36;
          }
        }

        v24 = (v20 != 0) & ~[a3 hasError];
LABEL_36:
        self->_continueLoad = v24;
      }

      else if (v14 == 2)
      {
        v16 = PBReaderReadData();
        headerData = self->_headerData;
        self->_headerData = v16;
      }

      else if (v14 == 1)
      {
        v15 = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, v15);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a3 position];
    }

    while (v25 < [a3 length]);
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

  headerData = self->_headerData;
  if (headerData)
  {
    [v3 setObject:headerData forKey:@"headerData"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithBool:self->_continueLoad];
    [v3 setObject:v7 forKey:@"continueLoad"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyGetAuthHeadersReply;
  v3 = [(PDURLSessionProxyGetAuthHeadersReply *)&v7 description];
  v4 = [(PDURLSessionProxyGetAuthHeadersReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)_setActualAuthHeaders:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0];
    [(PDURLSessionProxyGetAuthHeadersReply *)self setHeaderData:v5];

    v4 = v6;
  }
}

- (NSDictionary)_actualAuthHeaders
{
  v3 = [(PDURLSessionProxyGetAuthHeadersReply *)self headerData];

  if (v3)
  {
    v4 = [(PDURLSessionProxyGetAuthHeadersReply *)self headerData];
    v10 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v10];
    v6 = v10;

    if (v6)
    {
      v7 = qword_1000EB1D8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 code];
        *buf = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = v9;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error %@ [%ld] deserializing auth headers", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end