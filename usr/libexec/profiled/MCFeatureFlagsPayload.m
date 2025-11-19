@interface MCFeatureFlagsPayload
- (id)handlerWithProfileHandler:(id)a3;
@end

@implementation MCFeatureFlagsPayload

- (id)handlerWithProfileHandler:(id)a3
{
  v4 = a3;
  v5 = [(MCNewPayloadHandler *)[MCFeatureFlagsPayloadHandler alloc] initWithPayload:self profileHandler:v4];

  return v5;
}

@end