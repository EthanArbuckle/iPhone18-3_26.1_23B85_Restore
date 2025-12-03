@interface MCCertificateRevocationPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCCertificateRevocationPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCCertificateRevocationPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end