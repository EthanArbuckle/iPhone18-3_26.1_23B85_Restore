@interface SecDbKeychainSerializedSecretData
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

@implementation SecDbKeychainSerializedSecretData

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(SecDbKeychainSerializedSecretData *)self setCiphertext:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(SecDbKeychainSerializedSecretData *)self setWrappedKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(SecDbKeychainSerializedSecretData *)self setTamperCheck:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_wrappedKey hash]^ v3;
  return v4 ^ [(NSString *)self->_tamperCheck hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | equalCopy[1])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((wrappedKey = self->_wrappedKey, !(wrappedKey | equalCopy[3])) || -[NSData isEqual:](wrappedKey, "isEqual:")))
  {
    tamperCheck = self->_tamperCheck;
    if (tamperCheck | equalCopy[2])
    {
      v8 = [(NSString *)tamperCheck isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_wrappedKey copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_tamperCheck copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  [toCopy setCiphertext:ciphertext];
  [toCopy setWrappedKey:self->_wrappedKey];
  [toCopy setTamperCheck:self->_tamperCheck];
}

- (void)writeTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  PBDataWriterWriteDataField();
  wrappedKey = self->_wrappedKey;
  PBDataWriterWriteDataField();
  tamperCheck = self->_tamperCheck;
  PBDataWriterWriteStringField();
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
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v15 = PBReaderReadString();
        v16 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__tamperCheck;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = PBReaderReadData();
        v16 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__ciphertext;
LABEL_23:
        v17 = *v16;
        v18 = *&self->PBCodable_opaque[v17];
        *&self->PBCodable_opaque[v17] = v15;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__wrappedKey;
    goto LABEL_23;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    [v3 setObject:ciphertext forKey:@"ciphertext"];
  }

  wrappedKey = self->_wrappedKey;
  if (wrappedKey)
  {
    [v4 setObject:wrappedKey forKey:@"wrappedKey"];
  }

  tamperCheck = self->_tamperCheck;
  if (tamperCheck)
  {
    [v4 setObject:tamperCheck forKey:@"tamperCheck"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedSecretData;
  v3 = [(SecDbKeychainSerializedSecretData *)&v7 description];
  dictionaryRepresentation = [(SecDbKeychainSerializedSecretData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end