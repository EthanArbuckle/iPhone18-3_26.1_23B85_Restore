@interface SecDbKeychainSerializedSecretData
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

@implementation SecDbKeychainSerializedSecretData

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(SecDbKeychainSerializedSecretData *)self setCiphertext:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(SecDbKeychainSerializedSecretData *)self setWrappedKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(SecDbKeychainSerializedSecretData *)self setTamperCheck:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_wrappedKey hash]^ v3;
  return v4 ^ [(NSString *)self->_tamperCheck hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | v4[1])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((wrappedKey = self->_wrappedKey, !(wrappedKey | v4[3])) || -[NSData isEqual:](wrappedKey, "isEqual:")))
  {
    tamperCheck = self->_tamperCheck;
    if (tamperCheck | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_wrappedKey copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_tamperCheck copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v5 = a3;
  [v5 setCiphertext:ciphertext];
  [v5 setWrappedKey:self->_wrappedKey];
  [v5 setTamperCheck:self->_tamperCheck];
}

- (void)writeTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v7 = a3;
  PBDataWriterWriteDataField();
  wrappedKey = self->_wrappedKey;
  PBDataWriterWriteDataField();
  tamperCheck = self->_tamperCheck;
  PBDataWriterWriteStringField();
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
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
      v19 = [a3 position];
      if (v19 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__wrappedKey;
    goto LABEL_23;
  }

  return [a3 hasError] ^ 1;
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
  v4 = [(SecDbKeychainSerializedSecretData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end