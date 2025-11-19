@interface MCCellularPrivateNetworkPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCCellularPrivateNetworkPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCCellularPrivateNetworkPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end