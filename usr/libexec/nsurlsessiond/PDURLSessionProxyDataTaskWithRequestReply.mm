@interface PDURLSessionProxyDataTaskWithRequestReply
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (__NSCFURLSessionTaskInfo)_actualTaskInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_setActualTaskInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyDataTaskWithRequestReply

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = v4[1];
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

    [(PDURLSessionProxyDataTaskWithRequestReply *)self setTask:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(PDURLSessionProxyDataTaskWithRequestReply *)self setTaskInfo:?];
    v4 = v7;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | v4[1])) || -[PDURLSessionProxyTaskMessage isEqual:](task, "isEqual:")))
  {
    taskInfo = self->_taskInfo;
    if (taskInfo | v4[2])
    {
      v7 = [(NSData *)taskInfo isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_taskInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

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

  if (self->_taskInfo)
  {
    [v5 setTaskInfo:?];
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

  if (self->_taskInfo)
  {
    PBDataWriterWriteDataField();
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
        LOBYTE(v18[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v18[0] & 0x7F) << v6;
        if ((v18[0] & 0x80) == 0)
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

      if ((v13 >> 3) == 2)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        taskInfo = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, taskInfo);
        v18[0] = 0;
        v18[1] = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(taskInfo, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v16 = [a3 position];
      if (v16 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    taskInfo = self->_taskInfo;
    self->_taskInfo = v15;
LABEL_23:

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

  taskInfo = self->_taskInfo;
  if (taskInfo)
  {
    [v3 setObject:taskInfo forKey:@"taskInfo"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyDataTaskWithRequestReply;
  v3 = [(PDURLSessionProxyDataTaskWithRequestReply *)&v7 description];
  v4 = [(PDURLSessionProxyDataTaskWithRequestReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)_setActualTaskInfo:(id)a3
{
  v4 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:a3];
  [(PDURLSessionProxyDataTaskWithRequestReply *)self setTaskInfo:?];
}

- (__NSCFURLSessionTaskInfo)_actualTaskInfo
{
  v3 = objc_opt_class();
  v4 = [(PDURLSessionProxyDataTaskWithRequestReply *)self taskInfo];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:v4];

  return v5;
}

@end