@interface APPBLogVideoAnalyticsEventResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBLogVideoAnalyticsEventResponse

+ (id)options
{
  if (qword_1004E6B70 != -1)
  {
    sub_100394140();
  }

  v3 = qword_1004E6B68;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogVideoAnalyticsEventResponse;
  v3 = [(APPBLogVideoAnalyticsEventResponse *)&v7 description];
  dictionaryRepresentation = [(APPBLogVideoAnalyticsEventResponse *)self dictionaryRepresentation];
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