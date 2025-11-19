@interface NRGPBDataHeader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBDataHeader

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBDataHeader;
  v3 = [(NRGPBDataHeader *)&v7 description];
  v4 = [(NRGPBDataHeader *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_checksumData)
  {
    sub_1000112A0();
  }

  v5 = v4;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_checksumData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    checksumData = self->_checksumData;
    if (checksumData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NRGPBDataHeader *)self setChecksumData:?];
  }
}

@end