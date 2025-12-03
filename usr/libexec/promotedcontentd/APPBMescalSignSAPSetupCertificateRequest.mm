@interface APPBMescalSignSAPSetupCertificateRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBMescalSignSAPSetupCertificateRequest

+ (id)options
{
  if (qword_1004E6B80 != -1)
  {
    sub_100394154();
  }

  v3 = qword_1004E6B78;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBMescalSignSAPSetupCertificateRequest;
  v3 = [(APPBMescalSignSAPSetupCertificateRequest *)&v7 description];
  dictionaryRepresentation = [(APPBMescalSignSAPSetupCertificateRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end