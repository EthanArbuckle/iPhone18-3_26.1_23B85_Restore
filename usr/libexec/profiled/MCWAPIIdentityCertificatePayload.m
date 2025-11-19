@interface MCWAPIIdentityCertificatePayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCWAPIIdentityCertificatePayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewWAPIIdentityCertificatePayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end