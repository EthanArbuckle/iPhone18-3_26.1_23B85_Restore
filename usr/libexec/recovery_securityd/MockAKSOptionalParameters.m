@interface MockAKSOptionalParameters
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

@implementation MockAKSOptionalParameters

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(MockAKSOptionalParameters *)self setAccessGroups:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(MockAKSOptionalParameters *)self setExternalData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(MockAKSOptionalParameters *)self setAcmHandle:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_accessGroups hash];
  v4 = [(NSData *)self->_externalData hash]^ v3;
  return v4 ^ [(NSData *)self->_acmHandle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((accessGroups = self->_accessGroups, !(accessGroups | v4[1])) || -[NSData isEqual:](accessGroups, "isEqual:")) && ((externalData = self->_externalData, !(externalData | v4[3])) || -[NSData isEqual:](externalData, "isEqual:")))
  {
    acmHandle = self->_acmHandle;
    if (acmHandle | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_accessGroups copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_externalData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_acmHandle copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accessGroups)
  {
    [v4 setAccessGroups:?];
    v4 = v5;
  }

  if (self->_externalData)
  {
    [v5 setExternalData:?];
    v4 = v5;
  }

  if (self->_acmHandle)
  {
    [v5 setAcmHandle:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_accessGroups)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_externalData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_acmHandle)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
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
  v4 = [(MockAKSOptionalParameters *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end