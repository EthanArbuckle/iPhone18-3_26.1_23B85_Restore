@interface APPBLogAdEventResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBLogAdEventResponse

+ (id)options
{
  if (qword_1004E6928 != -1)
  {
    sub_100393A94();
  }

  v3 = qword_1004E6920;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogAdEventResponse;
  v3 = [(APPBLogAdEventResponse *)&v7 description];
  dictionaryRepresentation = [(APPBLogAdEventResponse *)self dictionaryRepresentation];
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