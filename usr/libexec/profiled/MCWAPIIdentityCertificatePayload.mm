@interface MCWAPIIdentityCertificatePayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCWAPIIdentityCertificatePayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewWAPIIdentityCertificatePayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end