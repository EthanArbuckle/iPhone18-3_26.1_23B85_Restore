@interface APPBMescalSignSAPSetupCertificateResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v4 = [(APPBMescalSignSAPSetupCertificateResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_certificate)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  certificate = self->_certificate;
  if (certificate)
  {
    [a3 setCertificate:certificate];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_certificate copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    certificate = self->_certificate;
    if (certificate | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(APPBMescalSignSAPSetupCertificateResponse *)self setCertificate:?];
  }
}

@end