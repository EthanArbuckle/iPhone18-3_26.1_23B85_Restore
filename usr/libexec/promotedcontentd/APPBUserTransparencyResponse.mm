@interface APPBUserTransparencyResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBUserTransparencyResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBUserTransparencyResponse;
  v3 = [(APPBUserTransparencyResponse *)&v7 description];
  dictionaryRepresentation = [(APPBUserTransparencyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    dictionaryRepresentation = [(APPBTransparencyDetails *)transparencyDetails dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"transparencyDetails"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_transparencyDetails)
  {
    sub_100394060();
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBTransparencyDetails *)self->_transparencyDetails copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    transparencyDetails = self->_transparencyDetails;
    if (transparencyDetails | equalCopy[1])
    {
      v6 = [(APPBTransparencyDetails *)transparencyDetails isEqual:?];
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
  fromCopy = from;
  transparencyDetails = self->_transparencyDetails;
  v6 = fromCopy[1];
  if (transparencyDetails)
  {
    if (v6)
    {
      [(APPBTransparencyDetails *)transparencyDetails mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBUserTransparencyResponse *)self setTransparencyDetails:?];
  }

  _objc_release_x1();
}

@end