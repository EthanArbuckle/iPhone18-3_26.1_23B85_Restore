@interface SecDbKeychainSerializedMetadataKey
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasKeyclass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecDbKeychainSerializedMetadataKey

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_keyclass = *(v4 + 10);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
  }

  if (v5)
  {
    self->_actualKeyclass = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 4))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBaguuid:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setAkswrappedkey:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBackupwrappedkey:?];
    v4 = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_keyclass;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_actualKeyclass;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_baguuid hash];
  v6 = [(NSData *)self->_akswrappedkey hash];
  return v5 ^ v6 ^ [(NSData *)self->_backupwrappedkey hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_keyclass != *(v4 + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_actualKeyclass != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  baguuid = self->_baguuid;
  if (baguuid | *(v4 + 4) && ![(NSData *)baguuid isEqual:?])
  {
    goto LABEL_18;
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey | *(v4 + 2))
  {
    if (![(NSData *)akswrappedkey isEqual:?])
    {
      goto LABEL_18;
    }
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey | *(v4 + 3))
  {
    v9 = [(NSData *)backupwrappedkey isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 10) = self->_keyclass;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 2) = self->_actualKeyclass;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSData *)self->_baguuid copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSData *)self->_akswrappedkey copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_backupwrappedkey copyWithZone:a3];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[10] = self->_keyclass;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_actualKeyclass;
    *(v4 + 44) |= 1u;
  }

  v6 = v4;
  if (self->_baguuid)
  {
    [v4 setBaguuid:?];
    v4 = v6;
  }

  if (self->_akswrappedkey)
  {
    [v6 setAkswrappedkey:?];
    v4 = v6;
  }

  if (self->_backupwrappedkey)
  {
    [v6 setBackupwrappedkey:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    keyclass = self->_keyclass;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    actualKeyclass = self->_actualKeyclass;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_baguuid)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_akswrappedkey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_backupwrappedkey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
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
        v35 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v35 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v35 & 0x7F) << v6;
        if ((v35 & 0x80) == 0)
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
      if ((v13 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            v37 = 0;
            v28 = [a3 position] + 1;
            if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
            {
              v30 = [a3 data];
              [v30 getBytes:&v37 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v27 |= (v37 & 0x7F) << v25;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v12 = v26++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_50;
            }
          }

          if ([a3 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v27;
          }

LABEL_50:
          v32 = 40;
        }

        else
        {
          if (v14 != 2)
          {
LABEL_45:
            v31 = PBReaderSkipValueWithTag();
            if (!v31)
            {
              return v31;
            }

            goto LABEL_56;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v36 = 0;
            v20 = [a3 position] + 1;
            if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
            {
              v22 = [a3 data];
              [v22 getBytes:&v36 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v19 |= (v36 & 0x7F) << v17;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_54;
            }
          }

          if ([a3 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_54:
          v32 = 8;
        }

        *&self->PBCodable_opaque[v32] = v23;
      }

      else
      {
        switch(v14)
        {
          case 3:
            v15 = PBReaderReadData();
            v16 = 32;
            break;
          case 4:
            v15 = PBReaderReadData();
            v16 = 16;
            break;
          case 5:
            v15 = PBReaderReadData();
            v16 = 24;
            break;
          default:
            goto LABEL_45;
        }

        v24 = *&self->PBCodable_opaque[v16];
        *&self->PBCodable_opaque[v16] = v15;
      }

LABEL_56:
      v33 = [a3 position];
    }

    while (v33 < [a3 length]);
  }

  LOBYTE(v31) = [a3 hasError] ^ 1;
  return v31;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_keyclass];
    [v3 setObject:v5 forKey:@"keyclass"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithInt:self->_actualKeyclass];
    [v3 setObject:v6 forKey:@"actualKeyclass"];
  }

  baguuid = self->_baguuid;
  if (baguuid)
  {
    [v3 setObject:baguuid forKey:@"baguuid"];
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey)
  {
    [v3 setObject:akswrappedkey forKey:@"akswrappedkey"];
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey)
  {
    [v3 setObject:backupwrappedkey forKey:@"backupwrappedkey"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SecDbKeychainSerializedMetadataKey;
  v3 = [(SecDbKeychainSerializedMetadataKey *)&v7 description];
  v4 = [(SecDbKeychainSerializedMetadataKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasKeyclass:(BOOL)a3
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