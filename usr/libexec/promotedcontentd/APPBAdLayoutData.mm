@interface APPBAdLayoutData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdLayoutData

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdLayoutData;
  v3 = [(APPBAdLayoutData *)&v7 description];
  v4 = [(APPBAdLayoutData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v7 = [(APPBAdLayoutDetails *)adLayoutDetails dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"adLayoutDetails"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_adLayoutDetails)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localeIdentifier)
  {
    [v4 setLocaleIdentifier:?];
    v4 = v5;
  }

  if (self->_adLayoutDetails)
  {
    [v5 setAdLayoutDetails:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(APPBAdLayoutDetails *)self->_adLayoutDetails copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((localeIdentifier = self->_localeIdentifier, !(localeIdentifier | v4[2])) || -[NSString isEqual:](localeIdentifier, "isEqual:")))
  {
    adLayoutDetails = self->_adLayoutDetails;
    if (adLayoutDetails | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(APPBAdLayoutData *)self setLocaleIdentifier:?];
    v4 = v7;
  }

  adLayoutDetails = self->_adLayoutDetails;
  v6 = v4[1];
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