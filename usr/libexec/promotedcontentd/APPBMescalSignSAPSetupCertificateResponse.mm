@interface APPBMescalSignSAPSetupCertificateResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBMescalSignSAPSetupCertificateResponse

+ (id)options
{
  if (qword_1004E6B90 != -1)
  {
    sub_100394168();
  }

  v3 = qword_1004E6B88;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMescalSignSAPSetupCertificateResponse;
  v3 = [(APPBMescalSignSAPSetupCertificateResponse *)&v7 description];
  dictionaryRepresentation = [(APPBMescalSignSAPSetupCertificateResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  certificate = self->_certificate;
  if (certificate)
  {
    [v3 setObject:certificate forKey:@"certificate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_certificate)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  certificate = self->_certificate;
  if (certificate)
  {
    [to setCertificate:certificate];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_certificate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    certificate = self->_certificate;
    if (certificate | equalCopy[1])
    {
      v6 = [(NSData *)certificate isEqual:?];
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
    [(APPBMescalSignSAPSetupCertificateResponse *)self setCertificate:?];
  }
}

@end