@interface MockAKSRefKey
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MockAKSRefKey

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(MockAKSRefKey *)self setKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(MockAKSRefKey *)self setOptionalParams:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSData isEqual:](key, "isEqual:")))
  {
    optionalParams = self->_optionalParams;
    if (optionalParams | v4[2])
    {
      v7 = [(NSData *)optionalParams isEqual:?];
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
  v6 = [(NSData *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_optionalParams copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (self->_optionalParams)
  {
    [v5 setOptionalParams:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_optionalParams)
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
        v20 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v20 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v20 & 0x7F) << v6;
        if ((v20 & 0x80) == 0)
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

      if ((v13 >> 3) == 1)
      {
        break;
      }

      if ((v13 >> 3) == 2)
      {
        v14 = &OBJC_IVAR___MockAKSRefKey__optionalParams;
LABEL_21:
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *&self->PBCodable_opaque[v16];
        *&self->PBCodable_opaque[v16] = v15;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v18 = [a3 position];
      if (v18 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v14 = &OBJC_IVAR___MockAKSRefKey__key;
    goto LABEL_21;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  optionalParams = self->_optionalParams;
  if (optionalParams)
  {
    [v4 setObject:optionalParams forKey:@"optional_params"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MockAKSRefKey;
  v3 = [(MockAKSRefKey *)&v7 description];
  v4 = [(MockAKSRefKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end