@interface MockAKSOptionalParameters
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

@implementation MockAKSOptionalParameters

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(MockAKSOptionalParameters *)self setAccessGroups:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(MockAKSOptionalParameters *)self setExternalData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(MockAKSOptionalParameters *)self setAcmHandle:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_accessGroups hash];
  v4 = [(NSData *)self->_externalData hash]^ v3;
  return v4 ^ [(NSData *)self->_acmHandle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((accessGroups = self->_accessGroups, !(accessGroups | equalCopy[1])) || -[NSData isEqual:](accessGroups, "isEqual:")) && ((externalData = self->_externalData, !(externalData | equalCopy[3])) || -[NSData isEqual:](externalData, "isEqual:")))
  {
    acmHandle = self->_acmHandle;
    if (acmHandle | equalCopy[2])
    {
      v8 = [(NSData *)acmHandle isEqual:?];
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
  v6 = [(NSData *)self->_accessGroups copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_externalData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_acmHandle copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accessGroups)
  {
    [toCopy setAccessGroups:?];
    toCopy = v5;
  }

  if (self->_externalData)
  {
    [v5 setExternalData:?];
    toCopy = v5;
  }

  if (self->_acmHandle)
  {
    [v5 setAcmHandle:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_accessGroups)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_externalData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_acmHandle)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
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
        break;
      }

      v14 = (v13 >> 3) - 1;
      if (v14 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v15 = off_100063A30[v14];
        v16 = PBReaderReadData();
        v17 = *v15;
        v18 = *&self->PBCodable_opaque[v17];
        *&self->PBCodable_opaque[v17] = v16;
      }

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
  accessGroups = self->_accessGroups;
  if (accessGroups)
  {
    [v3 setObject:accessGroups forKey:@"access_groups"];
  }

  externalData = self->_externalData;
  if (externalData)
  {
    [v4 setObject:externalData forKey:@"external_data"];
  }

  acmHandle = self->_acmHandle;
  if (acmHandle)
  {
    [v4 setObject:acmHandle forKey:@"acm_handle"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MockAKSOptionalParameters;
  v3 = [(MockAKSOptionalParameters *)&v7 description];
  dictionaryRepresentation = [(MockAKSOptionalParameters *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end