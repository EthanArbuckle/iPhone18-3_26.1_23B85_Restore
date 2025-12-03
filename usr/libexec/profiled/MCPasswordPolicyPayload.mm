@interface MCPasswordPolicyPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCPasswordPolicyPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewPasswordPolicyPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end