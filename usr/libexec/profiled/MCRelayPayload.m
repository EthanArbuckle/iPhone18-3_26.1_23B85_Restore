@interface MCRelayPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCRelayPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [[MCRelayPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end