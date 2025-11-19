@interface CKKSSerializedKey
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

@implementation CKKSSerializedKey

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(CKKSSerializedKey *)self setUuid:?];
  }

  if (v4[4])
  {
    [(CKKSSerializedKey *)self setZoneName:?];
  }

  if (v4[2])
  {
    [(CKKSSerializedKey *)self setKeyclass:?];
  }

  if (v4[1])
  {
    [(CKKSSerializedKey *)self setKey:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSString *)self->_zoneName hash]^ v3;
  v5 = [(NSString *)self->_keyclass hash];
  return v4 ^ v5 ^ [(NSData *)self->_key hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuid = self->_uuid, !(uuid | v4[3])) || -[NSString isEqual:](uuid, "isEqual:")) && ((zoneName = self->_zoneName, !(zoneName | v4[4])) || -[NSString isEqual:](zoneName, "isEqual:")) && ((keyclass = self->_keyclass, !(keyclass | v4[2])) || -[NSString isEqual:](keyclass, "isEqual:")))
  {
    key = self->_key;
    if (key | v4[1])
    {
      v9 = [(NSData *)key isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_zoneName copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_keyclass copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_key copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 setUuid:uuid];
  [v5 setZoneName:self->_zoneName];
  [v5 setKeyclass:self->_keyclass];
  [v5 setKey:self->_key];
}

- (void)writeTo:(id)a3
{
  uuid = self->_uuid;
  v8 = a3;
  PBDataWriterWriteStringField();
  zoneName = self->_zoneName;
  PBDataWriterWriteStringField();
  keyclass = self->_keyclass;
  PBDataWriterWriteStringField();
  key = self->_key;
  PBDataWriterWriteDataField();
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
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR___CKKSSerializedKey__keyclass;
          goto LABEL_28;
        }

        if (v14 == 4)
        {
          v15 = PBReaderReadData();
          v16 = &OBJC_IVAR___CKKSSerializedKey__key;
          goto LABEL_28;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR___CKKSSerializedKey__uuid;
          goto LABEL_28;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR___CKKSSerializedKey__zoneName;
LABEL_28:
          v17 = *v16;
          v18 = *&self->PBCodable_opaque[v17];
          *&self->PBCodable_opaque[v17] = v15;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v4 setObject:zoneName forKey:@"zoneName"];
  }

  keyclass = self->_keyclass;
  if (keyclass)
  {
    [v4 setObject:keyclass forKey:@"keyclass"];
  }

  key = self->_key;
  if (key)
  {
    [v4 setObject:key forKey:@"key"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CKKSSerializedKey;
  v3 = [(CKKSSerializedKey *)&v7 description];
  v4 = [(CKKSSerializedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end