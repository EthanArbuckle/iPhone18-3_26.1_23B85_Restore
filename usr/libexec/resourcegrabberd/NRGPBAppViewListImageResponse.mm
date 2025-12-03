@interface NRGPBAppViewListImageResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NRGPBAppViewListImageResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBAppViewListImageResponse;
  v3 = [(NRGPBAppViewListImageResponse *)&v7 description];
  dictionaryRepresentation = [(NRGPBAppViewListImageResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  imageData = self->_imageData;
  if (imageData)
  {
    [v3 setObject:imageData forKey:@"imageData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  imageData = self->_imageData;
  if (imageData)
  {
    [to setImageData:imageData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_imageData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    imageData = self->_imageData;
    if (imageData | equalCopy[1])
    {
      v6 = [(NSData *)imageData isEqual:?];
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
    [(NRGPBAppViewListImageResponse *)self setImageData:?];
  }
}

@end