@interface MCCertificateTransparencyPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCCertificateTransparencyPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCCertificateTransparencyPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end