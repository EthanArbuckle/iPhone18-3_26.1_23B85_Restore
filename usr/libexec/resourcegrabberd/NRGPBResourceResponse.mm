@interface NRGPBResourceResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBResourceResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBResourceResponse;
  v3 = [(NRGPBResourceResponse *)&v7 description];
  v4 = [(NRGPBResourceResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  resource = self->_resource;
  if (resource)
  {
    [v3 setObject:resource forKey:@"resource"];
  }

  checksumData = self->_checksumData;
  if (checksumData)
  {
    [v4 setObject:checksumData forKey:@"checksumData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_resource)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_checksumData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_resource)
  {
    [v4 setResource:?];
    v4 = v5;
  }

  if (self->_checksumData)
  {
    [v5 setChecksumData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_resource copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_checksumData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((resource = self->_resource, !(resource | v4[2])) || -[NSData isEqual:](resource, "isEqual:")))
  {
    checksumData = self->_checksumData;
    if (checksumData | v4[1])
    {
      v7 = [(NSData *)checksumData isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NRGPBResourceResponse *)self setResource:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NRGPBResourceResponse *)self setChecksumData:?];
    v4 = v5;
  }
}

@end