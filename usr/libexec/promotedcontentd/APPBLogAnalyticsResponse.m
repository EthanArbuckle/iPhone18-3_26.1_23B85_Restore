@interface APPBLogAnalyticsResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APPBLogAnalyticsResponse

+ (id)options
{
  if (qword_1004E6AD0 != -1)
  {
    sub_10039404C();
  }

  v3 = qword_1004E6AC8;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogAnalyticsResponse;
  v3 = [(APPBLogAnalyticsResponse *)&v7 description];
  v4 = [(APPBLogAnalyticsResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end