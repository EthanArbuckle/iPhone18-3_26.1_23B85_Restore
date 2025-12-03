@interface PDURLSessionProxyOpenSocketReply
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStreamErrorDomain:(BOOL)domain;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyOpenSocketReply

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_streamErrorDomain = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_streamErrorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_streamErrorDomain;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_streamErrorCode;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0 || self->_streamErrorDomain != *(equalCopy + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_streamErrorCode != *(equalCopy + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_streamErrorDomain;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_streamErrorCode;
    *(result + 16) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_streamErrorDomain;
    *(toCopy + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_streamErrorCode;
    *(toCopy + 16) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    streamErrorDomain = self->_streamErrorDomain;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    streamErrorCode = self->_streamErrorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
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
        v30 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v30 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v30 & 0x7F) << v6;
        if ((v30 & 0x80) == 0)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v32 = 0;
          v17 = [from position] + 1;
          if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v32 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v16 |= (v32 & 0x7F) << v14;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___PDURLSessionProxyOpenSocketReply__streamErrorDomain;
            goto LABEL_44;
          }
        }

        v22 = &OBJC_IVAR___PDURLSessionProxyOpenSocketReply__streamErrorDomain;
LABEL_41:
        if ([from hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v16;
        }

LABEL_44:
        *&self->PBCodable_opaque[*v22] = v21;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *&self->_has |= 1u;
    while (1)
    {
      v31 = 0;
      v25 = [from position] + 1;
      if (v25 >= [from position] && (v26 = objc_msgSend(from, "position") + 1, v26 <= objc_msgSend(from, "length")))
      {
        data3 = [from data];
        [data3 getBytes:&v31 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v16 |= (v31 & 0x7F) << v23;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___PDURLSessionProxyOpenSocketReply__streamErrorCode;
        goto LABEL_44;
      }
    }

    v22 = &OBJC_IVAR___PDURLSessionProxyOpenSocketReply__streamErrorCode;
    goto LABEL_41;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_streamErrorDomain];
    [v3 setObject:v5 forKey:@"streamErrorDomain"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithInt:self->_streamErrorCode];
    [v3 setObject:v6 forKey:@"streamErrorCode"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyOpenSocketReply;
  v3 = [(PDURLSessionProxyOpenSocketReply *)&v7 description];
  dictionaryRepresentation = [(PDURLSessionProxyOpenSocketReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasStreamErrorDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end