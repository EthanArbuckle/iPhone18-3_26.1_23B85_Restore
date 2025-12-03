@interface KCSharingPBLocalEntryData
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation KCSharingPBLocalEntryData

- (void)mergeFrom:(id)from
{
  if (*(from + 2))
  {
    [(KCSharingPBLocalEntryData *)self setCloudKitRecord:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    cloudKitRecord = self->_cloudKitRecord;
    if (cloudKitRecord | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_cloudKitRecord copyWithZone:zone];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  objc_storeStrong(v5 + 1, self->_unknownFields);
  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cloudKitRecord)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
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
          v8 = 0;
          goto LABEL_14;
        }
      }

      if ([from hasError])
      {
        v8 = 0;
      }

LABEL_14:
      if (([from hasError] & 1) != 0 || (v8 & 7) == 4)
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v18) = [from hasError] ^ 1;
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
    dictionaryRepresentation = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"Unknown Fields"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCSharingPBLocalEntryData;
  v3 = [(KCSharingPBLocalEntryData *)&v7 description];
  dictionaryRepresentation = [(KCSharingPBLocalEntryData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end