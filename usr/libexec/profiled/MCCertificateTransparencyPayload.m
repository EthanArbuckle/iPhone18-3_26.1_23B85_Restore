@interface MCCertificateTransparencyPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCCertificateTransparencyPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCCertificateTransparencyPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end