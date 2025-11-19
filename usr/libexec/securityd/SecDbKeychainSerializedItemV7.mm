@interface SecDbKeychainSerializedItemV7
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKeyclass:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedItemV7

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedSecretData:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(SecDbKeychainSerializedItemV7 *)self setEncryptedMetadata:?];
    v4 = v5;
  }

  self->_keyclass = v4[6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((encryptedSecretData = self->_encryptedSecretData, !(encryptedSecretData | *(v4 + 2))) || -[NSData isEqual:](encryptedSecretData, "isEqual:")) && ((encryptedMetadata = self->_encryptedMetadata, !(encryptedMetadata | *(v4 + 1))) || -[NSData isEqual:](encryptedMetadata, "isEqual:")) && self->_keyclass == *(v4 + 6);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptedSecretData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptedMetadata copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  *(v5 + 6) = self->_keyclass;
  return v5;
}

- (void)copyTo:(id)a3
{
  encryptedSecretData = self->_encryptedSecretData;
  v5 = a3;
  [v5 setEncryptedSecretData:encryptedSecretData];
  [v5 setEncryptedMetadata:self->_encryptedMetadata];
  v5[6] = self->_keyclass;
}

- (void)writeTo:(id)a3
{
  encryptedSecretData = self->_encryptedSecretData;
  v7 = a3;
  PBDataWriterWriteDataField();
  encryptedMetadata = self->_encryptedMetadata;
  PBDataWriterWriteDataField();
  keyclass = self->_keyclass;
  PBDataWriterWriteInt32Field();
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
        v23 = 16;
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
            self->_keyclass = v21;
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
  encryptedSecretData = self->_encryptedSecretData;
  if (encryptedSecretData)
  {
    [v3 setObject:encryptedSecretData forKey:@"encryptedSecretData"];
  }

  encryptedMetadata = self->_encryptedMetadata;
  if (encryptedMetadata)
  {
    [v4 setObject:encryptedMetadata forKey:@"encryptedMetadata"];
  }

  v7 = self->_keyclass - 6;
  if (v7 >= 7)
  {
    v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_keyclass];
  }

  else
  {
    v8 = off_100344420[v7];
  }

  [v4 setObject:v8 forKey:@"keyclass"];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedItemV7;
  v3 = [(SecDbKeychainSerializedItemV7 *)&v7 description];
  v4 = [(SecDbKeychainSerializedItemV7 *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (int)StringAsKeyclass:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KEYCLASS_AK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_CK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_DK"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_AKU"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_CKU"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_DKU"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"KEYCLASS_AKPU"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

@end