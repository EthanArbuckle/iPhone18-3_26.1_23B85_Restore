@interface PDURLSessionProxyGetAuthHeadersReply
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (NSDictionary)_actualAuthHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setActualAuthHeaders:(id)headers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyGetAuthHeadersReply

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(PDURLSessionProxyGetAuthHeadersReply *)self setHeaderData:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    self->_continueLoad = *(fromCopy + 24);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  task = self->_task;
  if (task | *(equalCopy + 2))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_8;
    }
  }

  headerData = self->_headerData;
  if (headerData | *(equalCopy + 1))
  {
    if (![(NSData *)headerData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_continueLoad)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_headerData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_continueLoad;
    *(v5 + 28) |= 1u;
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

  if (self->_headerData)
  {
    [v5 setHeaderData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_continueLoad;
    toCopy[28] |= 1u;
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

  if (self->_headerData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    continueLoad = self->_continueLoad;
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
        LOBYTE(v27[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v27 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v21 = [from position] + 1;
          if (v21 >= [from position] && (v22 = objc_msgSend(from, "position") + 1, v22 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:v27 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
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

        v24 = (v20 != 0) & ~[from hasError];
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
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, from))
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
  task = self->_task;
  if (task)
  {
    dictionaryRepresentation = [(PDURLSessionProxyTaskMessage *)task dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"task"];
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
  dictionaryRepresentation = [(PDURLSessionProxyGetAuthHeadersReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)_setActualAuthHeaders:(id)headers
{
  headersCopy = headers;
  if (headersCopy)
  {
    v6 = headersCopy;
    v5 = [NSPropertyListSerialization dataWithPropertyList:headersCopy format:200 options:0 error:0];
    [(PDURLSessionProxyGetAuthHeadersReply *)self setHeaderData:v5];

    headersCopy = v6;
  }
}

- (NSDictionary)_actualAuthHeaders
{
  headerData = [(PDURLSessionProxyGetAuthHeadersReply *)self headerData];

  if (headerData)
  {
    headerData2 = [(PDURLSessionProxyGetAuthHeadersReply *)self headerData];
    v10 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:headerData2 options:0 format:0 error:&v10];
    v6 = v10;

    if (v6)
    {
      v7 = qword_1000EB1D8;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        code = [v6 code];
        *buf = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = code;
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