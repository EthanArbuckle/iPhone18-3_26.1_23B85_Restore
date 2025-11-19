@interface APPBLogSysEventResponse
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APPBLogSysEventResponse

+ (id)options
{
  if (qword_1004E6BC0 != -1)
  {
    sub_1003941A4();
  }

  v3 = qword_1004E6BB8;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogSysEventResponse;
  v3 = [(APPBLogSysEventResponse *)&v7 description];
  v4 = [(APPBLogSysEventResponse *)self dictionaryRepresentation];
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