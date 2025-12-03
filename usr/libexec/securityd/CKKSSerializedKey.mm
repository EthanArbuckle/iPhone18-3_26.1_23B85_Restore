@interface CKKSSerializedKey
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

@implementation CKKSSerializedKey

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(CKKSSerializedKey *)self setUuid:?];
  }

  if (fromCopy[4])
  {
    [(CKKSSerializedKey *)self setZoneName:?];
  }

  if (fromCopy[2])
  {
    [(CKKSSerializedKey *)self setKeyclass:?];
  }

  if (fromCopy[1])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuid = self->_uuid, !(uuid | equalCopy[3])) || -[NSString isEqual:](uuid, "isEqual:")) && ((zoneName = self->_zoneName, !(zoneName | equalCopy[4])) || -[NSString isEqual:](zoneName, "isEqual:")) && ((keyclass = self->_keyclass, !(keyclass | equalCopy[2])) || -[NSString isEqual:](keyclass, "isEqual:")))
  {
    key = self->_key;
    if (key | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_zoneName copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_keyclass copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_key copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  uuid = self->_uuid;
  toCopy = to;
  [toCopy setUuid:uuid];
  [toCopy setZoneName:self->_zoneName];
  [toCopy setKeyclass:self->_keyclass];
  [toCopy setKey:self->_key];
}

- (void)writeTo:(id)to
{
  uuid = self->_uuid;
  toCopy = to;
  PBDataWriterWriteStringField();
  zoneName = self->_zoneName;
  PBDataWriterWriteStringField();
  keyclass = self->_keyclass;
  PBDataWriterWriteStringField();
  key = self->_key;
  PBDataWriterWriteDataField();
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
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
  dictionaryRepresentation = [(CKKSSerializedKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end