@interface PDURLSessionProxyDataTaskWithRequestReply
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (__NSCFURLSessionTaskInfo)_actualTaskInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_setActualTaskInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyDataTaskWithRequestReply

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[1];
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

    [(PDURLSessionProxyDataTaskWithRequestReply *)self setTask:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(PDURLSessionProxyDataTaskWithRequestReply *)self setTaskInfo:?];
    fromCopy = v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | equalCopy[1])) || -[PDURLSessionProxyTaskMessage isEqual:](task, "isEqual:")))
  {
    taskInfo = self->_taskInfo;
    if (taskInfo | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_taskInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

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

  if (self->_taskInfo)
  {
    [v5 setTaskInfo:?];
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

  if (self->_taskInfo)
  {
    PBDataWriterWriteDataField();
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
        LOBYTE(v18[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
        if (!PBReaderPlaceMark() || !sub_10006CE20(taskInfo, from))
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
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    taskInfo = self->_taskInfo;
    self->_taskInfo = v15;
LABEL_23:

    goto LABEL_25;
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
  dictionaryRepresentation = [(PDURLSessionProxyDataTaskWithRequestReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)_setActualTaskInfo:(id)info
{
  v4 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:info];
  [(PDURLSessionProxyDataTaskWithRequestReply *)self setTaskInfo:?];
}

- (__NSCFURLSessionTaskInfo)_actualTaskInfo
{
  v3 = objc_opt_class();
  taskInfo = [(PDURLSessionProxyDataTaskWithRequestReply *)self taskInfo];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:taskInfo];

  return v5;
}

@end