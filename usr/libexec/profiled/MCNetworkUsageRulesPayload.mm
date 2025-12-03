@interface MCNetworkUsageRulesPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCNetworkUsageRulesPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNetworkUsageRulesPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end