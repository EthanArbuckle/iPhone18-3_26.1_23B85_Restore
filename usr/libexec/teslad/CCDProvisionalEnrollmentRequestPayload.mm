@interface CCDProvisionalEnrollmentRequestPayload
- (id)dictionary;
@end

@implementation CCDProvisionalEnrollmentRequestPayload

- (id)dictionary
{
  v7.receiver = self;
  v7.super_class = CCDProvisionalEnrollmentRequestPayload;
  dictionary = [(CCDRequestPayload *)&v7 dictionary];
  v4 = [NSMutableDictionary dictionaryWithDictionary:dictionary];

  nonce = [(CCDProvisionalEnrollmentRequestPayload *)self nonce];
  [v4 setObject:nonce forKeyedSubscript:@"nonce"];

  return v4;
}

@end