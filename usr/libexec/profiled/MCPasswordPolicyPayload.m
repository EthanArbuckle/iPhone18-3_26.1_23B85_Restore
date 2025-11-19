@interface MCPasswordPolicyPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCPasswordPolicyPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewPasswordPolicyPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end