@interface MCSelfSignedCertificatePayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSelfSignedCertificatePayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCSelfSignedCertificatePayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end