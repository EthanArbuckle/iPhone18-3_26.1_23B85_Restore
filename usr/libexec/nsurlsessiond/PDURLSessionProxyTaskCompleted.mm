@interface PDURLSessionProxyTaskCompleted
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (__NSCFURLSessionTaskInfo)_actualTaskInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_setActualTaskInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyTaskCompleted

- (void)_setActualTaskInfo:(id)info
{
  v4 = [NSKeyedArchiver _nsurlsessionproxy_secureArchivedDataWithRootObject:info];
  [(PDURLSessionProxyTaskCompleted *)self setTaskInfo:?];
}

- (__NSCFURLSessionTaskInfo)_actualTaskInfo
{
  v3 = objc_opt_class();
  taskInfo = [(PDURLSessionProxyTaskCompleted *)self taskInfo];
  v5 = [NSKeyedUnarchiver _nsurlsessionproxy_secureUnarchiveObjectOfClass:v3 withData:taskInfo];

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

    [(PDURLSessionProxyTaskCompleted *)self setTask:?];
  }

  fromCopy = v9;
LABEL_7:
  error = self->_error;
  v8 = fromCopy[1];
  if (error)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyError *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDURLSessionProxyTaskCompleted *)self setError:?];
  }

  fromCopy = v9;
LABEL_13:
  if (fromCopy[3])
  {
    [(PDURLSessionProxyTaskCompleted *)self setTaskInfo:?];
    fromCopy = v9;
  }
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  v4 = [(PDURLSessionProxyError *)self->_error hash]^ v3;
  return v4 ^ [(NSData *)self->_taskInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((task = self->_task, !(task | equalCopy[2])) || -[PDURLSessionProxyTaskMessage isEqual:](task, "isEqual:")) && ((error = self->_error, !(error | equalCopy[1])) || -[PDURLSessionProxyError isEqual:](error, "isEqual:")))
  {
    taskInfo = self->_taskInfo;
    if (taskInfo | equalCopy[3])
    {
      v8 = [(NSData *)taskInfo isEqual:?];
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
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDURLSessionProxyError *)self->_error copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_taskInfo copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

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

  if (self->_error)
  {
    [v5 setError:?];
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

  if (self->_error)
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
        LOBYTE(v19) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v19 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v19 & 0x7F) << v6;
        if ((v19 & 0x80) == 0)
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
        break;
      }

      if (v14 == 2)
      {
        taskInfo = objc_alloc_init(PDURLSessionProxyError);
        objc_storeStrong(&self->_error, taskInfo);
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !sub_10006F354(taskInfo, from))
        {
LABEL_31:

          return 0;
        }

LABEL_25:
        PBReaderRecallMark();
LABEL_27:

        goto LABEL_29;
      }

      if (v14 == 1)
      {
        taskInfo = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, taskInfo);
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(taskInfo, from))
        {
          goto LABEL_31;
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v16 = PBReaderReadData();
    taskInfo = self->_taskInfo;
    self->_taskInfo = v16;
    goto LABEL_27;
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

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(PDURLSessionProxyError *)error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"error"];
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
  v7.super_class = PDURLSessionProxyTaskCompleted;
  v3 = [(PDURLSessionProxyTaskCompleted *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyTaskCompleted *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end