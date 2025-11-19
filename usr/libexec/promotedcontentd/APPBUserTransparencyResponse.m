@interface APPBUserTransparencyResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBUserTransparencyResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBUserTransparencyResponse;
  v3 = [(APPBUserTransparencyResponse *)&v7 description];
  v4 = [(APPBUserTransparencyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    v5 = [(APPBTransparencyDetails *)transparencyDetails dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"transparencyDetails"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_transparencyDetails)
  {
    sub_100394060();
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(APPBTransparencyDetails *)self->_transparencyDetails copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    transparencyDetails = self->_transparencyDetails;
    if (transparencyDetails | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  transparencyDetails = self->_transparencyDetails;
  v6 = v4[1];
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