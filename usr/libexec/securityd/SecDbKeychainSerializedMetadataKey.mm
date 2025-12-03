@interface SecDbKeychainSerializedMetadataKey
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasKeyclass:(BOOL)keyclass;
- (void)writeTo:(id)to;
@end

@implementation SecDbKeychainSerializedMetadataKey

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_keyclass = *(fromCopy + 10);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
  }

  if (v5)
  {
    self->_actualKeyclass = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBaguuid:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setAkswrappedkey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(SecDbKeychainSerializedMetadataKey *)self setBackupwrappedkey:?];
    fromCopy = v6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_keyclass != *(equalCopy + 10))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_actualKeyclass != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_18;
  }

  baguuid = self->_baguuid;
  if (baguuid | *(equalCopy + 4) && ![(NSData *)baguuid isEqual:?])
  {
    goto LABEL_18;
  }

  akswrappedkey = self->_akswrappedkey;
  if (akswrappedkey | *(equalCopy + 2))
  {
    if (![(NSData *)akswrappedkey isEqual:?])
    {
      goto LABEL_18;
    }
  }

  backupwrappedkey = self->_backupwrappedkey;
  if (backupwrappedkey | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_baguuid copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSData *)self->_akswrappedkey copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_backupwrappedkey copyWithZone:zone];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[10] = self->_keyclass;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_actualKeyclass;
    *(toCopy + 44) |= 1u;
  }

  v6 = toCopy;
  if (self->_baguuid)
  {
    [toCopy setBaguuid:?];
    toCopy = v6;
  }

  if (self->_akswrappedkey)
  {
    [v6 setAkswrappedkey:?];
    toCopy = v6;
  }

  if (self->_backupwrappedkey)
  {
    [v6 setBackupwrappedkey:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    keyclass = self->_keyclass;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    actualKeyclass = self->_actualKeyclass;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_baguuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_akswrappedkey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_backupwrappedkey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
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
        v35 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v35 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
            v28 = [from position] + 1;
            if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v37 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          if ([from hasError])
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
            v20 = [from position] + 1;
            if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v36 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          if ([from hasError])
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v31) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(SecDbKeychainSerializedMetadataKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasKeyclass:(BOOL)keyclass
{
  if (keyclass)
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