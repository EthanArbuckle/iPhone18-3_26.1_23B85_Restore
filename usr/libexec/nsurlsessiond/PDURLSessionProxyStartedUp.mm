@interface PDURLSessionProxyStartedUp
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDURLSessionProxyStartedUp

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_version = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(PDURLSessionProxyStartedUp *)self setLaunchUUID:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  launchUUID = self->_launchUUID;
  if (launchUUID | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_version;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_launchUUID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 20) |= 1u;
  }

  if (self->_launchUUID)
  {
    v5 = toCopy;
    [toCopy setLaunchUUID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_launchUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v26 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v26 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v17 = [from position] + 1;
          if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v27 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
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

        v20 = [from hasError] ? 0 : v16;
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v23) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(PDURLSessionProxyStartedUp *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end