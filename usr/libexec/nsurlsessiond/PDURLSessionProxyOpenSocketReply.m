@interface PDURLSessionProxyOpenSocketReply
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStreamErrorDomain:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDURLSessionProxyOpenSocketReply

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if ((v5 & 2) != 0)
  {
    self->_streamErrorDomain = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 16);
  }

  if (v5)
  {
    self->_streamErrorCode = *(v4 + 2);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_streamErrorDomain != *(v4 + 3))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 16) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) == 0 || self->_streamErrorCode != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_streamErrorDomain;
    *(v4 + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_streamErrorCode;
    *(v4 + 16) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    streamErrorDomain = self->_streamErrorDomain;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    streamErrorCode = self->_streamErrorCode;
    PBDataWriterWriteInt32Field();
    v4 = v8;
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
        v30 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v30 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v32 = 0;
          v17 = [a3 position] + 1;
          if (v17 >= [a3 position] && (v18 = objc_msgSend(a3, "position") + 1, v18 <= objc_msgSend(a3, "length")))
          {
            v19 = [a3 data];
            [v19 getBytes:&v32 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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
        if ([a3 hasError])
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
      v28 = [a3 position];
      if (v28 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *&self->_has |= 1u;
    while (1)
    {
      v31 = 0;
      v25 = [a3 position] + 1;
      if (v25 >= [a3 position] && (v26 = objc_msgSend(a3, "position") + 1, v26 <= objc_msgSend(a3, "length")))
      {
        v27 = [a3 data];
        [v27 getBytes:&v31 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
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

  return [a3 hasError] ^ 1;
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
  v4 = [(PDURLSessionProxyOpenSocketReply *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasStreamErrorDomain:(BOOL)a3
{
  if (a3)
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