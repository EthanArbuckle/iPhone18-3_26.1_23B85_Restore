@interface PDURLSessionProxySetTaskPriority
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

@implementation PDURLSessionProxySetTaskPriority

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = *(v4 + 2);
  if (task)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PDURLSessionProxyTaskMessage *)task mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PDURLSessionProxySetTaskPriority *)self setTask:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_priority = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_priority;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
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

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_priority == *(v4 + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_priority;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_task)
  {
    v5 = v4;
    [v4 setTask:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_priority;
    *(v4 + 24) |= 1u;
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

  if (*&self->_has)
  {
    priority = self->_priority;
    PBDataWriterWriteUint32Field();
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
        LOBYTE(v24[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v24 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:v24 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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
            v21 = 0;
            goto LABEL_36;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_36:
        self->_priority = v21;
      }

      else if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, v14);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(v14, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v22 = [a3 position];
    }

    while (v22 < [a3 length]);
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

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_priority];
    [v3 setObject:v6 forKey:@"priority"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxySetTaskPriority;
  v3 = [(PDURLSessionProxySetTaskPriority *)&v7 description];
  v4 = [(PDURLSessionProxySetTaskPriority *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end