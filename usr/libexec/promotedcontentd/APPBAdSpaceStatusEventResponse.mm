@interface APPBAdSpaceStatusEventResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APPBAdSpaceStatusEventResponse

+ (id)options
{
  if (qword_1004E6B10 != -1)
  {
    sub_1003940C8();
  }

  v3 = qword_1004E6B08;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdSpaceStatusEventResponse;
  v3 = [(APPBAdSpaceStatusEventResponse *)&v7 description];
  dictionaryRepresentation = [(APPBAdSpaceStatusEventResponse *)self dictionaryRepresentation];
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