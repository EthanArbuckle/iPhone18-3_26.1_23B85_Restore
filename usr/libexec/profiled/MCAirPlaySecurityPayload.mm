@interface MCAirPlaySecurityPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAirPlaySecurityPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCAirPlaySecurityPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end