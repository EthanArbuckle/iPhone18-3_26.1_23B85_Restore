@interface MCGlobalHTTPProxyPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCGlobalHTTPProxyPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewGlobalHTTPProxyPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end