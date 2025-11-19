@interface PDURLSessionProxyStartedUp
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

@implementation PDURLSessionProxyStartedUp

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_version = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(PDURLSessionProxyStartedUp *)self setLaunchUUID:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_version;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_launchUUID hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  launchUUID = self->_launchUUID;
  if (launchUUID | *(v4 + 1))
  {
    v7 = [(NSString *)launchUUID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_version;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_launchUUID copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_version;
    *(v4 + 20) |= 1u;
  }

  if (self->_launchUUID)
  {
    v5 = v4;
    [v4 setLaunchUUID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_launchUUID)
  {
    PBDataWriterWriteStringField();
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
        v26 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v26 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v26 & 0x7F) << v6;
        if ((v26 & 0x80) == 0)
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
        v21 = PBReaderReadString();
        launchUUID = self->_launchUUID;
        self->_launchUUID = v21;
      }

      else if ((v13 >> 3) == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v27 = 0;
          v17 = [a3 position] + 1;
          if (v17 >= [a3 position] && (v18 = objc_msgSend(a3, "position") + 1, v18 <= objc_msgSend(a3, "length")))
          {
            v19 = [a3 data];
            [v19 getBytes:&v27 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v16 |= (v27 & 0x7F) << v14;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_34;
          }
        }

        v20 = [a3 hasError] ? 0 : v16;
LABEL_34:
        self->_version = v20;
      }

      else
      {
        v23 = PBReaderSkipValueWithTag();
        if (!v23)
        {
          return v23;
        }
      }

      v24 = [a3 position];
    }

    while (v24 < [a3 length]);
  }

  LOBYTE(v23) = [a3 hasError] ^ 1;
  return v23;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  launchUUID = self->_launchUUID;
  if (launchUUID)
  {
    [v3 setObject:launchUUID forKey:@"launchUUID"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDURLSessionProxyStartedUp;
  v3 = [(PDURLSessionProxyStartedUp *)&v7 description];
  v4 = [(PDURLSessionProxyStartedUp *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end