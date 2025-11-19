@interface MCAppLayerVPNPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCAppLayerVPNPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCVPNPayloadHandlerBase *)[MCAppLayerVPNHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end