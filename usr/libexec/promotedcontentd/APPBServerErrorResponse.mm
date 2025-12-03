@interface APPBServerErrorResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBServerErrorResponse

+ (id)options
{
  if (qword_1004E6D10 != -1)
  {
    sub_100394640();
  }

  v3 = qword_1004E6D08;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBServerErrorResponse;
  v3 = [(APPBServerErrorResponse *)&v7 description];
  dictionaryRepresentation = [(APPBServerErrorResponse *)self dictionaryRepresentation];
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