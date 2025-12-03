@interface APPBAdLayoutData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBAdLayoutData

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdLayoutData;
  v3 = [(APPBAdLayoutData *)&v7 description];
  dictionaryRepresentation = [(APPBAdLayoutData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v3 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  adLayoutDetails = self->_adLayoutDetails;
  if (adLayoutDetails)
  {
    dictionaryRepresentation = [(APPBAdLayoutDetails *)adLayoutDetails dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"adLayoutDetails"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_adLayoutDetails)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_localeIdentifier)
  {
    [toCopy setLocaleIdentifier:?];
    toCopy = v5;
  }

  if (self->_adLayoutDetails)
  {
    [v5 setAdLayoutDetails:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(APPBAdLayoutDetails *)self->_adLayoutDetails copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((localeIdentifier = self->_localeIdentifier, !(localeIdentifier | equalCopy[2])) || -[NSString isEqual:](localeIdentifier, "isEqual:")))
  {
    adLayoutDetails = self->_adLayoutDetails;
    if (adLayoutDetails | equalCopy[1])
    {
      v7 = [(APPBAdLayoutDetails *)adLayoutDetails isEqual:?];
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
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(APPBAdLayoutData *)self setLocaleIdentifier:?];
    fromCopy = v7;
  }

  adLayoutDetails = self->_adLayoutDetails;
  v6 = fromCopy[1];
  if (adLayoutDetails)
  {
    if (v6)
    {
      [(APPBAdLayoutDetails *)adLayoutDetails mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBAdLayoutData *)self setAdLayoutDetails:?];
  }

  _objc_release_x1();
}

@end