@interface PDURLSessionProxyDidReceiveChallengeReply
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDisposition:(id)disposition;
- (int)disposition;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyDidReceiveChallengeReply

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = *(fromCopy + 3);
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

    [(PDURLSessionProxyDidReceiveChallengeReply *)self setTask:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 32))
  {
    self->_disposition = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  credential = self->_credential;
  v8 = *(fromCopy + 1);
  if (credential)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(PDURLSessionProxyCredential *)credential mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(PDURLSessionProxyDidReceiveChallengeReply *)self setCredential:?];
  }

  fromCopy = v9;
LABEL_15:
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_disposition;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(PDURLSessionProxyCredential *)self->_credential hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  task = self->_task;
  if (task | *(equalCopy + 3))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_disposition != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  credential = self->_credential;
  if (credential | *(equalCopy + 1))
  {
    v8 = [(PDURLSessionProxyCredential *)credential isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_disposition;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PDURLSessionProxyCredential *)self->_credential copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

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

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_disposition;
    *(toCopy + 32) |= 1u;
  }

  if (self->_credential)
  {
    [v5 setCredential:?];
    toCopy = v5;
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

  if (*&self->_has)
  {
    disposition = self->_disposition;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_credential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
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
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
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
      if ((v13 >> 3) == 3)
      {
        break;
      }

      if (v14 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v25) = 0;
          v19 = [from position] + 1;
          if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        if ([from hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_40:
        self->_disposition = v22;
        goto LABEL_41;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(PDURLSessionProxyTaskMessage);
        objc_storeStrong(&self->_task, v15);
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, from))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDURLSessionProxyCredential);
    objc_storeStrong(&self->_credential, v15);
    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !sub_10005E698(v15, from))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
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

  if (*&self->_has)
  {
    disposition = self->_disposition;
    if (disposition >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_disposition];
    }

    else
    {
      v7 = *(&off_1000D4F90 + disposition);
    }

    [v3 setObject:v7 forKey:@"disposition"];
  }

  credential = self->_credential;
  if (credential)
  {
    dictionaryRepresentation2 = [(PDURLSessionProxyCredential *)credential dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"credential"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyDidReceiveChallengeReply;
  v3 = [(PDURLSessionProxyDidReceiveChallengeReply *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyDidReceiveChallengeReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (int)StringAsDisposition:(id)disposition
{
  dispositionCopy = disposition;
  if ([dispositionCopy isEqualToString:@"UseCredential"])
  {
    v4 = 0;
  }

  else if ([dispositionCopy isEqualToString:@"PerformDefaultHandling"])
  {
    v4 = 1;
  }

  else if ([dispositionCopy isEqualToString:@"CancelAuthenticationChallenge"])
  {
    v4 = 2;
  }

  else if ([dispositionCopy isEqualToString:@"RejectProtectionSpace"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)disposition
{
  if (*&self->_has)
  {
    return self->_disposition;
  }

  else
  {
    return 1;
  }
}

@end