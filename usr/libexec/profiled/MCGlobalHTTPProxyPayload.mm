@interface MCGlobalHTTPProxyPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCGlobalHTTPProxyPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNewGlobalHTTPProxyPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end