@interface MCNetworkUsageRulesPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCNetworkUsageRulesPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCNetworkUsageRulesPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end