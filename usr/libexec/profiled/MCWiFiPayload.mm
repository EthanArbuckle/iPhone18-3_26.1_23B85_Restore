@interface MCWiFiPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCWiFiPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [[MCNewWiFiPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end