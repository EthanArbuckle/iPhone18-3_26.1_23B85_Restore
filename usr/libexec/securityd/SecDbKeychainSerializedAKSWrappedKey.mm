@interface SecDbKeychainSerializedAKSWrappedKey
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedAKSWrappedKey

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setWrappedKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SecDbKeychainSerializedAKSWrappedKey *)self setRefKeyBlob:?];
    fromCopy = v5;
  }

  self->_type = fromCopy[4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((wrappedKey = self->_wrappedKey, !(wrappedKey | *(equalCopy + 3))) || -[NSData isEqual:](wrappedKey, "isEqual:")) && ((refKeyBlob = self->_refKeyBlob, !(refKeyBlob | *(equalCopy + 1))) || -[NSData isEqual:](refKeyBlob, "isEqual:")) && self->_type == *(equalCopy + 4);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_wrappedKey copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_refKeyBlob copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 4) = self->_type;
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setWrappedKey:self->_wrappedKey];
  if (self->_refKeyBlob)
  {
    [toCopy setRefKeyBlob:?];
  }

  toCopy[4] = self->_type;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  wrappedKey = self->_wrappedKey;
  v7 = toCopy;
  PBDataWriterWriteDataField();
  if (self->_refKeyBlob)
  {
    PBDataWriterWriteDataField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
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
        v28 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
              v18 = [from position] + 1;
              if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v29 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
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

            if ([from hasError])
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v25) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(SecDbKeychainSerializedAKSWrappedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end