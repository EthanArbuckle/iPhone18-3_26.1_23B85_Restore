@interface CCDProvisionalEnrollmentRequestPayload
- (id)dictionary;
@end

@implementation CCDProvisionalEnrollmentRequestPayload

- (id)dictionary
{
  v7.receiver = self;
  v7.super_class = CCDProvisionalEnrollmentRequestPayload;
  v3 = [(CCDRequestPayload *)&v7 dictionary];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [(CCDProvisionalEnrollmentRequestPayload *)self nonce];
  [v4 setObject:v5 forKeyedSubscript:@"nonce"];

  return v4;
}

@end