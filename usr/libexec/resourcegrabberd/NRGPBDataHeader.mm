@interface NRGPBDataHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NRGPBDataHeader

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBDataHeader;
  v3 = [(NRGPBDataHeader *)&v7 description];
  dictionaryRepresentation = [(NRGPBDataHeader *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  checksumData = self->_checksumData;
  if (checksumData)
  {
    [v3 setObject:checksumData forKey:@"checksumData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_checksumData)
  {
    sub_1000112A0();
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_checksumData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    checksumData = self->_checksumData;
    if (checksumData | equalCopy[1])
    {
      v6 = [(NSData *)checksumData isEqual:?];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NRGPBDataHeader *)self setChecksumData:?];
  }
}

@end