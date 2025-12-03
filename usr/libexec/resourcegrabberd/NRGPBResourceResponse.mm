@interface NRGPBResourceResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NRGPBResourceResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBResourceResponse;
  v3 = [(NRGPBResourceResponse *)&v7 description];
  dictionaryRepresentation = [(NRGPBResourceResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_resource)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_checksumData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_resource)
  {
    [toCopy setResource:?];
    toCopy = v5;
  }

  if (self->_checksumData)
  {
    [v5 setChecksumData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_resource copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_checksumData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((resource = self->_resource, !(resource | equalCopy[2])) || -[NSData isEqual:](resource, "isEqual:")))
  {
    checksumData = self->_checksumData;
    if (checksumData | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NRGPBResourceResponse *)self setResource:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NRGPBResourceResponse *)self setChecksumData:?];
    fromCopy = v5;
  }
}

@end