@interface PDURLSessionProxyDidReceiveChallengeReply
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDisposition:(id)a3;
- (int)disposition;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyDidReceiveChallengeReply

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  task = self->_task;
  v6 = *(v4 + 3);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 32))
  {
    self->_disposition = *(v4 + 4);
    *&self->_has |= 1u;
  }

  credential = self->_credential;
  v8 = *(v4 + 1);
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

  v4 = v9;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  task = self->_task;
  if (task | *(v4 + 3))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_disposition != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  credential = self->_credential;
  if (credential | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_disposition;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PDURLSessionProxyCredential *)self->_credential copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

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

  if (*&self->_has)
  {
    *(v4 + 4) = self->_disposition;
    *(v4 + 32) |= 1u;
  }

  if (self->_credential)
  {
    [v5 setCredential:?];
    v4 = v5;
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
    disposition = self->_disposition;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_credential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
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
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          v19 = [a3 position] + 1;
          if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
          {
            v21 = [a3 data];
            [v21 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
        if (!PBReaderPlaceMark() || !sub_10006CE20(v15, a3))
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
      v23 = [a3 position];
      if (v23 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDURLSessionProxyCredential);
    objc_storeStrong(&self->_credential, v15);
    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !sub_10005E698(v15, a3))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
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
    v9 = [(PDURLSessionProxyCredential *)credential dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"credential"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyDidReceiveChallengeReply;
  v3 = [(PDURLSessionProxyDidReceiveChallengeReply *)&v7 description];
  v4 = [(PDURLSessionProxyDidReceiveChallengeReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (int)StringAsDisposition:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UseCredential"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PerformDefaultHandling"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CancelAuthenticationChallenge"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RejectProtectionSpace"])
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