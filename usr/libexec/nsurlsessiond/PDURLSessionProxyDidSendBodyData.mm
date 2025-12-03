@interface PDURLSessionProxyDidSendBodyData
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTotalBytesExpectedToSend:(BOOL)send;
- (void)setHasTotalBytesSent:(BOOL)sent;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyDidSendBodyData

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  task = self->_task;
  v6 = fromCopy[4];
  if (task)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(PDURLSessionProxyTaskMessage *)task mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    [(PDURLSessionProxyDidSendBodyData *)self setTask:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_bytesSent = fromCopy[1];
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((fromCopy[5] & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_totalBytesSent = fromCopy[3];
  *&self->_has |= 4u;
  if ((fromCopy[5] & 2) != 0)
  {
LABEL_10:
    self->_totalBytesExpectedToSend = fromCopy[2];
    *&self->_has |= 2u;
  }

LABEL_11:
}

- (unint64_t)hash
{
  v3 = [(PDURLSessionProxyTaskMessage *)self->_task hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761u * self->_bytesSent;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_totalBytesSent;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761u * self->_totalBytesExpectedToSend;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  task = self->_task;
  if (task | *(equalCopy + 4))
  {
    if (![(PDURLSessionProxyTaskMessage *)task isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_bytesSent != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_totalBytesSent != *(equalCopy + 3))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_totalBytesExpectedToSend != *(equalCopy + 2))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDURLSessionProxyTaskMessage *)self->_task copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5[3] = self->_totalBytesSent;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  v5[1] = self->_bytesSent;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    v5[2] = self->_totalBytesExpectedToSend;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_task)
  {
    v6 = toCopy;
    [toCopy setTask:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_bytesSent;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 3) = self->_totalBytesSent;
  *(toCopy + 40) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = self->_totalBytesExpectedToSend;
    *(toCopy + 40) |= 2u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_task)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    bytesSent = self->_bytesSent;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  totalBytesSent = self->_totalBytesSent;
  PBDataWriterWriteUint64Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    totalBytesExpectedToSend = self->_totalBytesExpectedToSend;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_7:
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
        LOBYTE(v38[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v38 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v38[0] & 0x7F) << v6;
        if ((v38[0] & 0x80) == 0)
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
      if ((v13 >> 3) > 2)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v18 = [from position] + 1;
            if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:v38 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v17 |= (v38[0] & 0x7F) << v15;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_57;
            }
          }

          if ([from hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_57:
          v35 = 8;
LABEL_66:
          *&self->PBCodable_opaque[v35] = v21;
          goto LABEL_67;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
      }

      v28 = objc_alloc_init(PDURLSessionProxyTaskMessage);
      objc_storeStrong(&self->_task, v28);
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !sub_10006CE20(v28, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *&self->_has |= 4u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [from position] + 1;
        if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
        {
          data3 = [from data];
          [data3 getBytes:v38 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v12 = v30++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([from hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 24;
      goto LABEL_66;
    }

    if (v14 == 4)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&self->_has |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v25 = [from position] + 1;
        if (v25 >= [from position] && (v26 = objc_msgSend(from, "position") + 1, v26 <= objc_msgSend(from, "length")))
        {
          data4 = [from data];
          [data4 getBytes:v38 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v24 |= (v38[0] & 0x7F) << v22;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v12 = v23++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_61;
        }
      }

      if ([from hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

LABEL_61:
      v35 = 16;
      goto LABEL_66;
    }

    goto LABEL_40;
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

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_bytesSent];
    [v3 setObject:v9 forKey:@"bytesSent"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  [v3 setObject:v10 forKey:@"totalBytesSent"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesExpectedToSend];
    [v3 setObject:v7 forKey:@"totalBytesExpectedToSend"];
  }

LABEL_7:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyDidSendBodyData;
  v3 = [(PDURLSessionProxyDidSendBodyData *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyDidSendBodyData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasTotalBytesExpectedToSend:(BOOL)send
{
  if (send)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalBytesSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end