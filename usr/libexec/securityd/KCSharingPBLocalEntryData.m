@interface KCSharingPBLocalEntryData
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCSharingPBLocalEntryData

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 2))
  {
    [(KCSharingPBLocalEntryData *)self setCloudKitRecord:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    cloudKitRecord = self->_cloudKitRecord;
    if (cloudKitRecord | v4[2])
    {
      v6 = [(NSData *)cloudKitRecord isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_cloudKitRecord copyWithZone:a3];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cloudKitRecord)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
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
          v8 = 0;
          goto LABEL_14;
        }
      }

      if ([a3 hasError])
      {
        v8 = 0;
      }

LABEL_14:
      if (([a3 hasError] & 1) != 0 || (v8 & 7) == 4)
      {
        break;
      }

      if ((v8 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        cloudKitRecord = self->_cloudKitRecord;
        self->_cloudKitRecord = v13;
      }

      else
      {
        if (!self->_unknownFields)
        {
          v15 = objc_alloc_init(PBUnknownFields);
          unknownFields = self->_unknownFields;
          self->_unknownFields = v15;

          v17 = self->_unknownFields;
        }

        v18 = PBUnknownFieldAdd();
        if (!v18)
        {
          return v18;
        }
      }

      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  LOBYTE(v18) = [a3 hasError] ^ 1;
  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  cloudKitRecord = self->_cloudKitRecord;
  if (cloudKitRecord)
  {
    [v3 setObject:cloudKitRecord forKey:@"cloudKitRecord"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v7 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBLocalEntryData;
  v3 = [(KCSharingPBLocalEntryData *)&v7 description];
  v4 = [(KCSharingPBLocalEntryData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end