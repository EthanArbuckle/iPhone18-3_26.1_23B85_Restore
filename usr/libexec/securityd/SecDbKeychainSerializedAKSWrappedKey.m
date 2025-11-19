@interface SecDbKeychainSerializedAKSWrappedKey
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedAKSWrappedKey

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setWrappedKey:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setRefKeyBlob:?];
    v4 = v5;
  }

  self->_type = v4[4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((wrappedKey = self->_wrappedKey, !(wrappedKey | *(v4 + 3))) || -[NSData isEqual:](wrappedKey, "isEqual:")) && ((refKeyBlob = self->_refKeyBlob, !(refKeyBlob | *(v4 + 1))) || -[NSData isEqual:](refKeyBlob, "isEqual:")) && self->_type == *(v4 + 4);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_wrappedKey copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_refKeyBlob copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 4) = self->_type;
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setWrappedKey:self->_wrappedKey];
  if (self->_refKeyBlob)
  {
    [v4 setRefKeyBlob:?];
  }

  v4[4] = self->_type;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  wrappedKey = self->_wrappedKey;
  v7 = v4;
  PBDataWriterWriteDataField();
  if (self->_refKeyBlob)
  {
    PBDataWriterWriteDataField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
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
        v28 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v28 & 0x7F) << v6;
        if ((v28 & 0x80) == 0)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) == 1)
      {
        v22 = PBReaderReadData();
        v23 = 24;
      }

      else
      {
        if (v14 != 2)
        {
          if (v14 == 3)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v29 = 0;
              v18 = [a3 position] + 1;
              if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
              {
                v20 = [a3 data];
                [v20 getBytes:&v29 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v17 |= (v29 & 0x7F) << v15;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v12 = v16++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_37;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_37:
            self->_type = v21;
          }

          else
          {
            v25 = PBReaderSkipValueWithTag();
            if (!v25)
            {
              return v25;
            }
          }

          goto LABEL_38;
        }

        v22 = PBReaderReadData();
        v23 = 8;
      }

      v24 = *&self->PBCodable_opaque[v23];
      *&self->PBCodable_opaque[v23] = v22;

LABEL_38:
      v26 = [a3 position];
    }

    while (v26 < [a3 length]);
  }

  LOBYTE(v25) = [a3 hasError] ^ 1;
  return v25;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  wrappedKey = self->_wrappedKey;
  if (wrappedKey)
  {
    [v3 setObject:wrappedKey forKey:@"wrappedKey"];
  }

  refKeyBlob = self->_refKeyBlob;
  if (refKeyBlob)
  {
    [v4 setObject:refKeyBlob forKey:@"refKeyBlob"];
  }

  v7 = [NSNumber numberWithUnsignedInt:self->_type];
  [v4 setObject:v7 forKey:@"type"];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedAKSWrappedKey;
  v3 = [(SecDbKeychainSerializedAKSWrappedKey *)&v7 description];
  v4 = [(SecDbKeychainSerializedAKSWrappedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end