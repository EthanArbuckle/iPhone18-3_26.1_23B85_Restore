@interface APPBLogAdContentErrorResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBLogAdContentErrorResponse

+ (id)options
{
  if (qword_1004E6BD0 != -1)
  {
    sub_1003941E4();
  }

  v3 = qword_1004E6BC8;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogAdContentErrorResponse;
  v3 = [(APPBLogAdContentErrorResponse *)&v7 description];
  dictionaryRepresentation = [(APPBLogAdContentErrorResponse *)self dictionaryRepresentation];
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